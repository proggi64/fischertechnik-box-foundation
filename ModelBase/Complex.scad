// Fischertechnik Box Foundation
// Complex Model Helpers

// ElevatedFramesWithCutoff
// FrameAxis
// DockableEdgedFrame
// FrameFlatPiece
// RailsBasePlate
// FrameSpecialFlat

use <../Base/Constants.scad>
use <../Base/Placement.scad>

include <../Base/PlacementOptions.scad>

use <Simple.scad>

// getElevatedFramesWithCutoffSpace(length, depth)
// Gets the space needed for elevated frames with the given length and depth.
function getElevatedFramesWithCutoffSpace(volume) = getFrameOuterVolume([volume.x, volume.y-getTolerance(), volume.z]);

// ElevatedFramesWithCutoff(length, depth, height, loadDepth, loadHeight, bearingLength, clamp, cutThrough)
// Elevated holder for axis or similar parts
// volume = [width, depth, height] volume of the element
// depth = depth of the holder frame
// height = height of the holder frame
// bearingLength = length of the bearing
// cutThrough = true if no end walls are needed
// single = true if only the left holder should be created
// clampThrough = true if the clamp goes through the bottom

module ElevatedFramesWithCutoff(volume, depth, height, bearingLength, cutThrough=false, single=false, clampThrough=false) {
    width = volume.x + getTolerance() - (cutThrough ? 2*getDividerThickness() : 0);
    innerFrameWidth = width - 2*bearingLength;

    module NestedFrames() {
        Frame([width, depth, height], tolerance=0);
        translate([bearingLength, 0, 0])
            Frame([innerFrameWidth, depth, height], tolerance=0);
        }
    
    // single == true? Then cutoff the complete right part
    cutoffWidth = single ? width : innerFrameWidth;
    cutoffDepth = depth + 4*getDividerThickness();
    cutoffHeight = height + getExcess();
    
    axisCutoffWidth = width;
    axisCutoffDepth = volume.y + 0.2;
    axisCutoffHeight = volume.z + getExcess();
    axisClampHeight = (clampThrough ? height : axisCutoffHeight) + getExcess();

    zOffset = height - volume.z;
    clamp = (depth - axisCutoffDepth) / 2;
    zOffsetClamp = clampThrough ? 0 : zOffset;
    
    cutThroughWidth = getDividerThickness() + 2*getExcess();

    difference() {
        NestedFrames();
        translate([getDividerThickness() + bearingLength, -getDividerThickness(), 0])
            cube([cutoffWidth, cutoffDepth, cutoffHeight]);
        translate([getDividerThickness(), getDividerThickness() + clamp, zOffsetClamp])
            cube([axisCutoffWidth, axisCutoffDepth, axisClampHeight]);
        if (cutThrough) {
            translate([-getExcess(), getDividerThickness(), zOffset])
                cube([cutThroughWidth + getExcess(), depth, axisCutoffHeight]);
            if (!single)
                translate([width + getDividerThickness() - getExcess(), getDividerThickness(), zOffset])
                    cube([cutThroughWidth, depth, axisCutoffHeight]);
        }
    }
}

frameAxisDepth = getAxisDiameter() * 1.1;
frameAxisHeight = 15.0;
frameAxisLengthTolerance = 0.4;

// getFrameAxisDepth()
// Gets the depth of an axis holder (inner depth without the walls, see FrameAxis)

function getFrameAxisDepth() = frameAxisDepth;

// getFrameAxisHeight(count=1)
// count = Count of axis (should not be more than 8)
// Gets the default height of an axis holder (see FrameAxis)

function getFrameAxisHeight(count=1) = (count > 2) ? frameAxisHeight + (count-2) * getAxisDiameter() : frameAxisHeight;

// getFrameAxisSpace(length, count=1)
// Gets the width and depth of the space a frame axis for the given axis length needs
// length = Length of axis (default 30)
// count = Count of axis

function getFrameAxisSpace(length=30, count=1) = [
    length + getTolerance() + frameAxisLengthTolerance + 2 * getDividerThickness(), 
    frameAxisDepth + 2 * getDividerThickness(),
    getFrameAxisHeight(count)
    ];

// FrameAxis(length, xOrientation)
// Frame for single 4mm axis
// length = length of the axis (defaut 30)
// count = Count of axis (should not be more than 8)
// cutThrough = true when no frame wall should be at the end of the axis holder,
// default is false
// height = Height of the axis holders (default ist 14.8) - when count is greater than 3
// this height is automatically increased bei (count-2) * getAxisDiameter()

module FrameAxis(length=30, count=1, cutThrough=false, height=getFrameAxisHeight(), single=false) {
    bearingLength = 9.4;
    loadDepth = getAxisDiameter();
    loadHeight = count * getAxisDiameter();
    height =  (count > 2) ? height + (count-2) * getAxisDiameter() : height;
    
    ElevatedFramesWithCutoff([length + frameAxisLengthTolerance, loadDepth, loadHeight], getFrameAxisDepth(), height, bearingLength, cutThrough, single);
}

// getAxisMiddleSupportSpace(length=8)
// Gets the space the AxisMiddleSupport needs.
// length = length of the element (defaut 8)

function getAxisMiddleSupportSpace(length=8) = [length, getFrameAxisSpace().y];

// AxisMiddleSupport(length=8, height=getFrameAxisHeight())
// Frame for a middle support of a long axis
// length = length of the element (defaut 8)
// height = Height of the axis holder (default ist 14.8)

module AxisMiddleSupport(length=8, height=getFrameAxisHeight()) {
    bearingLength = length/2;
    loadDepth = getAxisDiameter();
    loadHeight = getAxisDiameter();

    ElevatedFramesWithCutoff(
        [bearingLength*2, loadDepth, loadHeight], 
        getFrameAxisDepth(), 
        height, 
        bearingLength, 
        cutThrough=true, 
        single=false, 
        clampThrough=true);
}

// getDockableEdgedFrameWidth(edgeDistance, alignX=NoAlign)
// Gets the additional width distance at the docked side of a dockable frame
// edgeDistance = The value returned if alignX is a different value than NoAlign

function getDockableEdgedFrameWidth(edgeDistance, alignX=NoAlign) = 
    (alignX == AlignLeft || alignX == AlignRight) ? edgeDistance : 0;

// getDockableEdgedFrameDepth(edgeDistance, alignX=NoAlign)
// Gets the additional depth distance at the docked side of a dockable frame
// edgeDistance = The value returned if alignY is a different value than NoAlign

function getDockableEdgedFrameDepth(edgeDistance, alignY=NoAlign) = 
    (alignY == AlignTop || alignY == AlignBottom) ? edgeDistance : 0;

// getDockableEdgedFrameSpace(volume, alignX=NoAlign, alignY=NoAlign, edgeDistance=getStandardEdgeDistance())
// volume = The volume of the building block which should be placed inton the frame
// alignX = NoAlign when the frame is not docked to the left or right wall, AlignLeft or AlignRight
// alignY = NoAlign when the frame is not docked to the top or bottom wall, AlignTop or AlignBottom
// edgeDistance = The additional distance to the wall where the frame is docked

function getDockableEdgedFrameSpace(
    volume, 
    alignX=NoAlign,
    alignY=NoAlign,
    edgeDistance=getStandardEdgeDistance()) = 
        getFrameOuterVolume([
            volume.x + getDockableEdgedFrameWidth(edgeDistance, alignX), 
            volume.y + getDockableEdgedFrameDepth(edgeDistance, alignY), 
            0]);

// DockableEdgedFrame(height, frameEdge=15, webDistance=11.5, edge=NoDock, align=NoAlign)
// volume = [width, depth, height] volume of the element
// alignX 0=NoAlign, 1=AlignLeft, 4=AlignRight
// alignY 0=NoAlign, 2=AlignBottom, 5=AlignTop
// edgeDistance = Distance of the block to the wall of the box
// frameEdge = Frame length from the corner to the cutoff
// webDistance = Distance of the webs to the corner of the box

module DockableEdgedFrame(
    volume, 
    alignX=NoAlign,
    alignY=NoAlign,
    edgeDistance=getStandardEdgeDistance(), 
    frameEdge=getStandardCornerLength(), 
    webDistance=getStandardWebDistance()
    )
{
    width = getFrameInnerVolume(volume).x;
    depth = getFrameInnerVolume(volume).y;
    height = getFrameInnerVolume(volume).z;
    completeWidth = width + getDockableEdgedFrameWidth(edgeDistance, alignX);
    completeDepth = depth + getDockableEdgedFrameDepth(edgeDistance, alignY);
    
    completeEdgeDistance = edgeDistance + getDividerThickness();
    
    dockTop = alignY == AlignTop;
    dockBottom = alignY == AlignBottom;
    dockLeft = alignX == AlignLeft;
    dockRight = alignX == AlignRight;

    module TopWebs(leftDocked) {
        diff = (leftDocked ? edgeDistance : 0);
        translate([
            getDividerThickness() + webDistance + diff, 
            completeDepth - completeEdgeDistance + 2*getDividerThickness(), 
            -getExcess()])
            cube([getDividerThickness(), completeEdgeDistance + getDividerThickness(), height + getExcess()]);
        translate([
            width - webDistance + diff, 
            completeDepth - completeEdgeDistance + 2*getDividerThickness(), 
            -getExcess()])
            cube([getDividerThickness(), edgeDistance + 2*getDividerThickness(), height + getExcess()]);
    }

    module BottomWebs(leftDocked) {
        diff = (leftDocked ? edgeDistance : 0);
        translate([
            getDividerThickness() + webDistance + diff, 
            -getDividerThickness(), 
            -getExcess()])
            cube([getDividerThickness(), completeEdgeDistance + getDividerThickness(), height + getExcess()]);
        translate([
            width - webDistance + diff, 
            -getDividerThickness(), 
            -getExcess()])
            cube([getDividerThickness(), completeEdgeDistance + getDividerThickness(), height + getExcess()]);
    }

    module RightWebs(bottomDocked) {
        diff = (bottomDocked ? edgeDistance : 0);
        translate([
            completeWidth - completeEdgeDistance + 2*getDividerThickness(), 
            getDividerThickness() + webDistance + diff, 
            -getExcess()])
            cube([completeEdgeDistance + getDividerThickness(), getDividerThickness(), height + getExcess()]);
        translate([
            completeWidth - completeEdgeDistance + 2*getDividerThickness(), 
            depth - webDistance + diff, 
            -getExcess()])
            cube([completeEdgeDistance + getDividerThickness(), getDividerThickness(), height + getExcess()]);
    }

    module LeftWebs(bottomDocked) {
        diff = (bottomDocked ? edgeDistance : 0);
        translate([
            -getDividerThickness(), 
            getDividerThickness() + webDistance + diff, 
            -getExcess()])
            cube([completeEdgeDistance + getDividerThickness(), getDividerThickness(), height + getExcess()]);
        translate([
            -getDividerThickness(), 
            depth - webDistance + diff, 
            -getExcess()])
            cube([completeEdgeDistance + getDividerThickness(), getDividerThickness(), height + getExcess()]);
    }

    difference() {
        frameWidthExt = (dockLeft || dockRight) ? getDividerThickness() : 0;
        frameWidthOffset = (dockLeft) ? -frameWidthExt : 0;
        frameDepthExt = (dockBottom || dockTop) ? getDividerThickness() : 0;
        frameDepthOffset = (dockBottom) ? -frameDepthExt : 0;
        
        translate([frameWidthOffset, frameDepthOffset])
            Frame([completeWidth + frameWidthExt, completeDepth + frameDepthExt, height], 0);
        
        cutoffWidth = (completeWidth + ((dockLeft || dockRight) ? 0 : 2*getDividerThickness())) - 30;
        cutoffDepth = (completeDepth + ((dockTop || dockBottom) ? 0 : 2*getDividerThickness())) - 30;
        cutoffXOffset = 15 + (dockLeft ? edgeDistance : 0);
        cutoffYOffset = 15 + (dockBottom ? edgeDistance : 0);
        
        translate([cutoffXOffset, getDividerThickness()/2 + completeDepth, 0])
            cube([cutoffWidth, 2*getDividerThickness(), height + 1]);
        translate([cutoffXOffset, -getDividerThickness()/2, 0])
            cube([cutoffWidth, 2*getDividerThickness(), height + 1]);
        translate([-getDividerThickness()/2, cutoffYOffset, 0])
            cube([2*getDividerThickness(), cutoffDepth, height + 1]);
        translate([getDividerThickness()/2 + completeWidth, cutoffYOffset, 0])
            cube([2*getDividerThickness(), cutoffDepth, height + 1]);

        depthExt = (dockLeft || dockRight) ? getDividerThickness() + getExcess() : 0;
        depthOffset = (dockLeft) ? -depthExt - getExcess() : 0;

        excess = -getExcess() * 2;

        if (dockTop) {
            // Remove complete top wall
            translate([
                getDividerThickness() + depthOffset + frameWidthOffset, 
                getDividerThickness()/2 + completeDepth + frameDepthExt, 
                excess])
                cube([completeWidth + depthExt + frameWidthExt, 2*getDividerThickness(), height + 1]);                
        }
        if (dockBottom) {
            // Remove complete bottom wall
            translate([
                getDividerThickness() + depthOffset + frameWidthOffset, 
                -getDividerThickness()/2 + frameDepthOffset, 
                excess])
                cube([completeWidth + depthExt + frameWidthExt, 2*getDividerThickness(), height + 1]);
        }
        if (dockLeft) {
            // Remove complete left wall
            translate([
                -getDividerThickness()/2 + frameWidthOffset, 
                getDividerThickness() + frameDepthOffset, 
                excess])
                cube([2*getDividerThickness(), completeDepth + frameDepthExt, height + 1]);
        }
        if (dockRight) {
            // Remove complete right wall
            translate([
                getDividerThickness()/2 + completeWidth + frameWidthExt, 
                getDividerThickness() + frameDepthOffset, 
                excess])
                cube([2*getDividerThickness(), completeDepth + frameDepthExt, height + 1]);
        }
    }
    
    if (dockTop)           
        TopWebs(dockLeft);
    if (dockBottom)           
        BottomWebs(dockLeft);
    if (dockLeft)
        LeftWebs(dockBottom);
    if (dockRight)
        RightWebs(dockBottom);
}

frameGridWidth = 4.1;
frameFlatPieceHeight = 10;

// getFrameFlatPieceVolume(count, size)
// Gets the outer volume of the specified frame for flat pieces
// count = Count of flat pieces in X direction
// size = 30 or 60

function getFrameFlatPieceVolume(count, size) = getFrameOuterVolume([frameGridWidth * count, size, frameFlatPieceHeight]); 

// FrameFlatPiece(count, size)
// Frame for 30 or 60 mm flat pieces. Each flat piece has a thickness of 4.1 mm.
// count = Count of flat pieces in X direction
// size = 30 or 60

module FrameFlatPiece(count, size) {
    Frame([frameGridWidth * count, size, frameFlatPieceHeight]);
}

plateThickness = 2.1;
holderStudDepth = 4;

function getDepthPerPlate() = plateThickness + getTolerance() + holderStudDepth;

// getHolderBuildingPlateSpace(width, count)
// width = Width of the building plate (90, 75, 60, 45, 30)
// count = Count of building plates. Default 1.
// Gets the width and depth of the space a building plate holder needs for the given size and count.

function getHolderBuildingPlateSpace(width, count = 1) = [
    width + getTolerance(),
    holderStudDepth + getDepthPerPlate() * count];

// HolderBuildingPlate(width, count, firstGapHigher)
// HolderBuildingPlate(width, count, firstGapHigher)
// Holders for Building Plates
// width = Width of the building plate (90, 75, 60, 45, 30)
// count = Count of building plates. Default 1.
// dock = true 15 mm high holder at the edge of the box. Default: false.

module HolderBuildingPlate(width, count = 1, dock = false) {
    plateThickness = 2.1;
    stud = getStudHeight() + getStudTolerance();
    firstHeight = 15;
    studXLeftOffset = width>30 ? (15 - getDividerThickness()/2) : ((15 - 4)/2 - getDividerThickness() - getTolerance());
    
    gapHeight = 10 + getExcess();
    spaceWidth = width;
    spaceDepth = holderStudDepth + getDepthPerPlate() * count;
    studXRightOffset = spaceWidth - getDividerThickness() - studXLeftOffset;

    // Space
    Space([spaceWidth + getTolerance(), spaceDepth]);

    module HolderStud(high = false) {
        translate([0, high ? -getDividerThickness() : 0, -getExcess()])
            cube([getDividerThickness(), holderStudDepth + (high ? getDividerThickness() : 0), high ? firstHeight : gapHeight]);
    }
    
    module HolderStuds(first = false) {
        translate([studXLeftOffset + getTolerance()/2, 0, 0])
            HolderStud(first);
        translate([studXRightOffset + getTolerance()/2, 0, 0])
            HolderStud(first);
    }
    
    HolderStuds(dock);
    firstYOffset = getDepthPerPlate();
    lastYOffset = firstYOffset + getDepthPerPlate() * (count-1);
    for (yOffset = [firstYOffset:getDepthPerPlate():lastYOffset]) {
        translate([0, yOffset, 0])
            HolderStuds();
    }
}

railsBasePlateHeight = 9.3;

// getRailsBasePlateVolume(width, depth)
// width = width of the plate in mm
// depth = depth of the plate in mm

function getRailsBasePlateVolume(width, depth) = [
    width + getTolerance(), 
    depth + getTolerance(), 
    railsBasePlateHeight + getExcess()];

// RailsBasePlate(width, depth)
// width = width of the plate in mm
// depth = depth of the plate in mm

module RailsBasePlate(width, depth) {
    
    Space (getRailsBasePlateVolume(width, depth));
    
    railWidth = 20;
    railHeight = railsBasePlateHeight + getExcess();
    railToEdge = 14;
    
    railX = getRailsBasePlateVolume(width, depth).x - railWidth;
    railY = getRailsBasePlateVolume(width, depth).y - railToEdge - getDividerThickness();
    for (xOffset = [0, railX])
        for (yOffset = [railToEdge, railY])
            translate([xOffset, yOffset -getExcess()])
                cube([railWidth, getDividerThickness(), railHeight]);
}

// FrameSpecialFlat(elementSpace)
// Special 15 mm height frame for apertures, mirrors and lenses from the ec building kits.
// volume = width, depth, and height of the element (aperture, mirror or lens)

module FrameSpecialFlat(volume) {
    frameHeight = 15;
    partDepth = 6.0;
    innerVolume = getFrameInnerVolume([volume.x, volume.y, frameHeight]);
    
    Space(getFrameOuterVolume(volume));
    
    module TwoFrames() {
        Frame([innerVolume.x, partDepth, frameHeight], 0);
        translate([0, innerVolume.y - partDepth])
            Frame([innerVolume.x, partDepth, frameHeight], 0);
    }
    
    difference() {
        TwoFrames();
        
        webDistance = 5.0;
        translate([getDividerThickness(), getDividerThickness(), frameHeight - volume.z])
            cube(innerVolume);
        translate([getDividerThickness() + webDistance, getDividerThickness()])
            cube([innerVolume.x - 2*webDistance, innerVolume.y, innerVolume.z]);        
    }
}


frameRackWidth = 30;
frameRackDepth = 16.5;
frameRackHeight = 12.8;
frameRackFrameHeight = frameRackHeight + 2;

rackInnerHeight = 10.9;
rackInnerDiff = 4.0;

function getRackInnerHeight() = rackInnerHeight;

// getFrameRack(factor=1, count=1)
// Gets the space for a frame for count racks in one row.
// factor = 1 for 30 mm, 2 for 60 mm racks.
// count = Count of racks side by side.

function getFrameRackSpace(factor=1, count=1) = getFrameOuterVolume([frameRackWidth * factor, frameRackDepth * count, frameRackHeight]);

// RackBase(factor=1, count=1)
// Inner frames for racks.
// factor 1 for rack 30, 2 for rack 60
// count = Count of racks
// alignX 0=NoAlign, 1=AlignLeft, 4=AlignRight
// alignY 0=NoAlign, 2=AlignBottom, 5=AlignTop
// frame = true when frame should be created (2 mm higher than rack); false otherwise

module RackBase(factor=1, count=1, alignX=NoAlign, alignY=NoAlign, frame=false) {
    
    yOffset = (frameRackDepth - rackInnerDiff) / 2;
    
    wayDepth = yOffset + 2*getExcess() - getDividerThickness();
    wayXOffset = (frameRackWidth + getDividerThickness()) / 2;
    
    module UpperWeb (dock = false) {
        wayYOffset = getDividerThickness() - getExcess();
        translate([wayXOffset, wayYOffset])
            Wall([getDividerThickness(), wayDepth, rackInnerHeight]);
    }

    module LowerWeb (dock = false) {
        wayYOffset = getFrameRackSpace(count).y - getDividerThickness() - wayDepth + getExcess();
        translate([wayXOffset, wayYOffset])    
            Wall([getDividerThickness(), wayDepth, rackInnerHeight]);
    }
    
    module InnerWebs() {
        UpperWeb();
        LowerWeb();
    }

    module XWall(y = 0) {
        translate([-dockLeft, y])
            Wall(xLeftWallVolume);
        translate([endx + wayXOffset, y])
            Wall(xRightWallVolume);
    }
    
    endx = (factor-1) * frameRackWidth;
    endy = (count-1) * frameRackDepth;
    
    dockLeft = (alignX == AlignLeft) ? getDividerThickness() : 0;    
    dockRight = (alignX == AlignRight) ? getDividerThickness() : 0;
    
    for (yLoopOffset = [0:frameRackDepth:endy]) {
        // Inner frame
        translate([-dockLeft, yOffset + yLoopOffset, 0])
            Frame([frameRackWidth * factor + (dockLeft + dockRight), rackInnerDiff, rackInnerHeight],
                openLeft = (alignX == AlignLeft),
                openRight = (alignX == AlignRight));
        for (xOffset = [0:frameRackWidth:endx]) {
            translate ([xOffset, yLoopOffset])
                InnerWebs();
        }
    }
    if (frame) {
        yWallVolume = [
            getDividerThickness(),
            frameRackDepth * count + 2*getDividerThickness() + getTolerance(),
            frameRackFrameHeight];

        if (alignX != AlignLeft)
            Wall(yWallVolume);
        if (alignX != AlignRight)
            translate([getFrameRackSpace(factor, count).x - getDividerThickness(), 0])
            Wall(yWallVolume);
    }

    xLeftWallVolume = [
        wayXOffset + dockLeft + getDividerThickness(), 
        getDividerThickness(), 
        frameRackFrameHeight];
    xRightWallVolume = [
        wayXOffset + dockRight + getDividerThickness() + getTolerance(), 
        getDividerThickness(), 
        frameRackFrameHeight];
    
    if (alignY == AlignBottom) {
        translate([0, -2*getDividerThickness()]) {
            UpperWeb();
            translate([endx, 0])
                UpperWeb();
        }
    } else if(frame) {
        XWall();
    }

    if (alignY == AlignTop) {
        translate([0, endy + 2*getDividerThickness()]) {
            LowerWeb();
            translate([endx, 0])
               LowerWeb();
        }
    } else if (frame) {
        XWall(frameRackDepth * count + getDividerThickness() + getTolerance());
    }
}

// FrameRack(factor=1, count=1)
// Frame for rack 30. The racks 30 are ordered in line.
// factor 1 for rack 30, 2 for rack 60
// count = Count of racks

module FrameRack(factor=1, count=1, alignX=NoAlign, alignY=NoAlign) {
    // Outer frame
    RackBase(factor, count, alignX, alignY, true);
}

frameBracketWidth = 27;
axisExtensionWidth = 23;
frameBracketDepth = 7.5;
frameBracketHeight = 8;

// getFrameBracketWidth()
// Gets the width of an single bracket frame

function getFrameBracketWidth() = frameBracketWidth;

// getFrameBracketSpace()
// Gets the space for a frame for a bracket with worm.

function getFrameBracketSpace() = getFrameOuterVolume([
    frameBracketWidth + axisExtensionWidth - getDividerThickness(), 
    frameBracketDepth, 
    frameBracketHeight]);

// FrameBracket(webVolume)
// Frame for brackets with or without worm (mot1), including a web
// webVolume = Volume of the web right of the frame that supports the axis or worm

module FrameBracket(webVolume) {
    Space(getFrameBracketSpace());
    Frame([frameBracketWidth, frameBracketDepth, frameBracketHeight]);
    webOffset = 34.5;
    Place(
        x = webOffset,
        boxSpace = getFrameBracketSpace(),
        elementSpace = webVolume,
        alignY = AlignCenter)
        Wall(webVolume);
}

gearRackDepth = 17;
gearRackHeight = 13;
gearRackConnectAxisLength = 7.6;
gearRackBaseWidth = 30;

// getFrameGearRack30Space()
// Gets the space of a frame for the gear rack 30 for mini-motor lifting gear

function getGearRackSpace(width=gearRackBaseWidth, dock=false) = [
    width + gearRackConnectAxisLength + getTolerance() + (dock ? 1 : 2) * getDividerThickness(), 
    gearRackDepth, 
    gearRackHeight];

// Frame for a gear rack for mini-motor lifting gear
// width = base width of the gear rack (30 or 60)
// dock = true if the left side can be docked to the box wall

module GearRack(width=gearRackBaseWidth, dock=false) {
    Space(getGearRackSpace(width, dock));
    
    innerFrameDepth = 11;
    frameHeight = 15;
    volume = [width + gearRackConnectAxisLength + getTolerance(), innerFrameDepth, frameHeight];

    module RackFrame() {
        baseRailDistance = 10.8;
        railHeight = 7.5;
        sideHeight = 13;

        dockXOffset = dock ? -getDividerThickness() : 0;
        
        translate([dockXOffset, 0]) {
            difference() {
                Frame(volume, tolerance=0, openLeft = dock);
                cutoffWidth=getFrameOuterVolume(volume, tolerance=0).x - (dock ? 0.9 : 2)*getDividerThickness();
                dockXRailOffset = dock ? -(1.1*getDividerThickness())/2 : 0;
                translate([dockXRailOffset, 0, sideHeight]) {
                    FrameTopCutoff(volume, width=cutoffWidth, tolerance=0);
                    FrameBottomCutoff(volume, width=cutoffWidth, tolerance=0);
                }
            }
            FrameRails(volume, 
                distance = baseRailDistance + (width - gearRackBaseWidth), 
                height=railHeight, 
                direction=Vertical, 
                tolerance = 0);
        }
    }

    CenterVertical(getFrameOuterVolume(volume, tolerance=0).y, space=getGearRackSpace(width))
        RackFrame();
}
