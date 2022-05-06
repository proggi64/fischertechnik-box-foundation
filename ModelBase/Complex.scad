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

module ElevatedFramesWithCutoff(volume, depth, height, bearingLength, cutThrough=false) {
    width = volume.x + getTolerance() - (cutThrough ? 2*getDividerThickness() : 0);
    innerFrameWidth = width - 2*bearingLength;

    module NestedFrames() {
        Frame([width, depth, height], tolerance=0);
        translate([bearingLength, 0, 0])
            Frame([innerFrameWidth, depth, height], tolerance=0);
    }
    
    cutoffDepth = depth + 4*getDividerThickness();
    cutoffHeight = height + getExcess();
    
    axisCutoffWidth = width;
    axisCutoffDepth = volume.y;
    axisCutoffHeight = volume.z + getExcess();

    zOffset = height - volume.z;
    clamp = (depth - volume.y) / 2;
    
    cutThroughWidth = getDividerThickness() + 2*getExcess();

    difference() {
        NestedFrames();
        translate([getDividerThickness() + bearingLength, -getDividerThickness(), 0])
            cube([innerFrameWidth, cutoffDepth, cutoffHeight]);
        translate([getDividerThickness(), getDividerThickness() + clamp, zOffset])
            cube([axisCutoffWidth, axisCutoffDepth, axisCutoffHeight]);
        if (cutThrough) {
            translate([-getExcess(), getDividerThickness(), zOffset])
                cube([cutThroughWidth, depth, axisCutoffHeight]);
            translate([width + getDividerThickness() - getExcess(), getDividerThickness(), zOffset])
                cube([cutThroughWidth, depth, axisCutoffHeight]);
        }
    }
}

frameAxisDepth = 4.4;
frameAxisHeight = 14.8;

function getFrameAxisDepth() = frameAxisDepth;

function getFrameAxisHeight() = frameAxisHeight;

// getFrameAxisSpace
// Gets the width and depth of the space a frame axis for the given axis length needs

function getFrameAxisSpace(length) = [length + getTolerance() + 2 * getDividerThickness(), frameAxisDepth + 2 * getDividerThickness()];

// FrameAxis(length, xOrientation)
// Frame for single 4mm axis
// length = length of the axis
// cutThrough = true when no frame wall should be at the end of the axis holder,
// default is false

module FrameAxis(length, cutThrough=false) {
    height = getFrameAxisHeight();
    bearingLength = 9.4;
    loadDepth = getAxisDiameter();
    loadHeight = getAxisDiameter();
    
    ElevatedFramesWithCutoff([length, loadDepth, loadHeight], frameAxisDepth, height, bearingLength, cutThrough);
}

function getDockableEdgedFrameWidthEdgeSpace(edgeDistance, alignX=NoAlign) = 
    (alignX == AlignLeft || alignX == AlignRight) ? edgeDistance : 0;

function getDockableEdgedFrameDepthEdgeSpace(edgeDistance, alignY=NoAlign) = 
    (alignY == AlignTop || alignY == AlignBottom) ? edgeDistance : 0;

function getDockableEdgedFrameSpace(
    volume, 
    alignX=NoAlign,
    alignY=NoAlign,
    edgeDistance=getStandardEdgeDistance()) = 
        getFrameOuterVolume([
            volume.x + getDockableEdgedFrameWidthEdgeSpace(edgeDistance, alignX), 
            volume.y + getDockableEdgedFrameDepthEdgeSpace(edgeDistance, alignY), 
            0]);

// DockableEdgedFrame(height, frameEdge=15, webDistance=11.5, edge=NoDock, align=NoAlign)
// volume = [width, depth, height] volume of the element
// alignX 0=NoAlign, 2=AlignBottom, 5=AlignTop
// alignY 0=NoAlign, 1=AlignLeft, 4=AlignRight
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
    completeWidth = width + getDockableEdgedFrameWidthEdgeSpace(edgeDistance, alignX);
    completeDepth = depth + getDockableEdgedFrameDepthEdgeSpace(edgeDistance, alignY);
    
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
holderPinDepth = 4;

function getSpacePerPlate() = plateThickness + getTolerance() + holderPinDepth;

// getHolderBuildingPlateSpace(width, count)
// width = Width of the building plate (90, 75, 60, 45, 30)
// count = Count of building plates. Default 1.
// Gets the width and depth of the space a building plate holder needs for the given size and count.

function getHolderBuildingPlateSpace(width, count) = [
    width + getTolerance(),
    holderPinDepth + getSpacePerPlate() * count];

// HolderBuildingPlate(width, count, firstGapHigher)
// Holders for Building Plates
// width = Width of the building plate (90, 75, 60, 45, 30)
// count = Count of building plates. Default 1.
// firstGapHigher = true 15 mm high holder at the edge of the box. Default: false.

module HolderBuildingPlate(width, count = 1, firstGapHigher = false) {
    plateThickness = 2.1;
    pin = 2.6;
    firstGapHeight = 15;
    pinXOffset = 7;
    
    gapHeight = 10 + getExcess();
    spaceWidth = width + getTolerance();
    spaceDepth = holderPinDepth + getSpacePerPlate() * count;
    pinXRightOffset = spaceWidth - getDividerThickness() - pinXOffset;
    
    // Space
    Space([spaceWidth, spaceDepth]);

    module HolderPin(high = false) {
        translate([0, high ? -getDividerThickness() : 0, -getExcess()])
            cube([getDividerThickness(), holderPinDepth + (high ? getDividerThickness() : 0), high ? firstGapHeight : gapHeight]);
    }
    
    module HolderPins(first = false) {
        translate([pinXOffset, 0, 0])
            HolderPin(first);
        translate([pinXRightOffset, 0, 0])
            HolderPin(first);
    }
    
    HolderPins(firstGapHigher);
    firstYOffset = getSpacePerPlate();
    lastYOffset = firstYOffset + getSpacePerPlate() * (count-1);
    for (yOffset = [firstYOffset:getSpacePerPlate():lastYOffset]) {
        translate([0, yOffset, 0])
            HolderPins();
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

// FrameSpecialFlat(elementSpace, innerHeight)
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
        translate([getDividerThickness(), getDividerThickness(), volume.z])
            cube(innerVolume);
        translate([getDividerThickness() + webDistance, getDividerThickness()])
            cube([innerVolume.x - 2*webDistance, innerVolume.y, innerVolume.z]);        
    }
}


frameRackWidth = 30;
frameRackDepth = 16.5;
frameRackHeight = 12.8;

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

module RackBase(factor=1, count=1) {
    
    yOffset = (frameRackDepth - rackInnerDiff) / 2;
    
    module InnerWebs() {        
        wayDepth = yOffset + 2*getExcess() - getDividerThickness();

        wayXOffset = (frameRackWidth + getDividerThickness()) / 2;
        way0YOffset = getDividerThickness() - getExcess();
        way1YOffset = getFrameRackSpace(count).y - getDividerThickness() - wayDepth + getExcess();
        
        translate([wayXOffset, 0]) {
            translate([0, way0YOffset])
                Wall([getDividerThickness(), wayDepth, rackInnerHeight]);
            translate([0, way1YOffset])    
                Wall([getDividerThickness(), wayDepth, rackInnerHeight]);
        }
    }
    
    endx = (factor-1) * frameRackWidth;
    endy = (count-1) * frameRackDepth;
    for (yLoopOffset = [0:frameRackDepth:endy]) {
        // Inner frame
        translate([0, yOffset + yLoopOffset, 0])
            Frame([frameRackWidth * factor, rackInnerDiff, rackInnerHeight]);
        for (xOffset = [0:frameRackWidth:endx]) {
            translate ([xOffset, yLoopOffset])
                InnerWebs();
        }
    }
}

// FrameRack(factor=1, count=1)
// Frame for rack 30. The racks 30 are ordered in line.
// factor 1 for rack 30, 2 for rack 60
// count = Count of racks

module FrameRack(factor=1, count=1) {
    // Outer frame
    Frame([frameRackWidth * factor, frameRackDepth * count, frameRackHeight]);
    RackBase(factor, count);
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
