// Fischertechnik Box Foundation
// Simple Model Helpers

// Space
// Wall
// Tube
// LeveledTube
// Frame
// AngeledFrame
// DockableFrame
// Axis
// AxisWithSpace
// LeveledAxis
// LeveledAxisWithSpace
// Text

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../Base/Boxes.scad>

include <../Base/PlacementOptions.scad>

// Space(width, depth)
// Thin space below the zero height of the specified width and depth.
// This should be the base of each element.
// space = [x,y] width and depth of the space

module Space(space) {
    translate([0, 0, -getExcess()])
        cube([space.x, space.y, getExcess()]);
}

// Wall(volume)
// Wall that will be sunk into the bottom by the excess
// volume = [width, depth, height] volume of the wall (without excess)

module Wall(volume) {
    translate([0, 0, -getExcess()])
        cube([volume.x, volume.y, volume.z + getExcess()]);
}

// Tube(height, innerDiameter, outerDiameter=innerDiameter+2*getTubeWallThickness())
// Standing tube, with it's center at 0,0. Use Center without elementSpace to center in a space.
// height = Height of the tube's wall
// innerDiameter = Diameter of the inner tube
// outerDiameter = Diameter of the outer tube

module Tube(height, innerDiameter=0, outerDiameter=0) {
    difference() {
        heightOfTube = height + getExcess();
        innerDiameter = (innerDiameter != 0.0) ? innerDiameter : (outerDiameter-2*getTubeWallThickness());
        outerDiameter = (outerDiameter != 0.0) ? outerDiameter : (innerDiameter+2*getTubeWallThickness());
        
        translate([0, 0, -getExcess()])
            cylinder(h = heightOfTube, d = outerDiameter, $fn = getFragments());
        cylinder(h = heightOfTube, d = innerDiameter, $fn = getFragments());
    }        
}

// LeveledTube(height, diameter, leveHeight, leveDiameter)
// Standing tube, with it's center at 0,0. With an optional leveled base. Use Center without elementSpace to center in a space.
// height = Height of the tube's wall
// diameter = Diameter of the outer tube
// leveHeight = height of the leveld thicker base
// levelDiameter = Outer diameter of the leveld thicker base.

module LeveledTube(height, diameter, levelHeight, levelDiameter) {
    module FullCylinder() {
        cylinder(height + getExcess(), d = diameter, $fn = getFragments());
        if (levelHeight > 0)
            cylinder(levelHeight + getExcess(), d = levelDiameter, $fn = getFragments());
    }
    
    cutoffDiameter = diameter - getTubeWallThickness();

    // Cut out inner cylinder to make it a tube
    difference() {
        translate([0, 0, , -getExcess()])
            FullCylinder();
        cylinder(height + getExcess(), d = cutoffDiameter, $fn = getFragments());
    }    
}

// getFrameOuterVolume(volume, tolerance=getTolerance())
// Gets the outer volume of a frame. The width and height will
// be expanded by the wall thicknesses plus the tolerance.
// The height will be expanded by the excess to be sunk into the underlying 
// space to avoid gaps between the bottom and the element.
// volume = [width, depth, height] Inner volume (without tolerance)
// tolerance = tolerance in mm to ensure that the building blocks will fit.

function getFrameOuterVolume(volume, tolerance=getTolerance()) =
    [
        volume.x + 2*getDividerThickness() + tolerance,
        volume.y + 2*getDividerThickness() + tolerance,
        volume.z + getExcess()
    ];

// getFrameInnerVolume(volume, tolerance=getTolerance())
// Gets the inner volume of a frame. The width and height will
// be expanded by the tolerance.
// The height will be expanded by the excess 
// to avoid a thin film at the top of the cube.
// volume = [width, depth, height] Inner volume (without tolerance)
// tolerance = tolerance in mm to ensure that the building blocks will fit.

function getFrameInnerVolume(volume, tolerance=getTolerance()) =
    [
        volume.x + tolerance,
        volume.y + tolerance,
        volume.z + getExcess()
    ];

// Frame(volume, tolerance=default)
// Frame or inner box with the given sizes in mm
// volume = [width, depth, height] Inner volume (without tolerance)
//   width = Inner width in mm
//   depth = Inner depth in mm
//   height = Height of the walls in mm
// tolerance = additional space for the building block (default is reasonable)
// openLeft = true for no wall left
// openRight = true for no wall right
// openTop = true for no wall at top
// openBottom = true for no wall at bottom

module Frame(volume, tolerance=getTolerance(), openLeft=false, openRight=false, openTop=false, openBottom=false) {
    outerVolume = getFrameOuterVolume(volume, tolerance);
    
    cutoffAdd = getDividerThickness() + getExcess();

    cutoffVolume = [
        volume.x + (openLeft ? cutoffAdd : 0) + (openRight ? cutoffAdd : 0),
        volume.y + (openBottom ? cutoffAdd : 0) + (openTop ? cutoffAdd : 0),
        volume.z];
    innerXOffset = openLeft ? 0-getExcess() : getDividerThickness()+getExcess();
    innerYOffset = openBottom ? 0-getExcess() : getDividerThickness()+getExcess();

    translate([0,0,-getExcess()]) {
        difference() {
            cube(outerVolume);
            // Remove inner and optional each specified wall
            translate([innerXOffset, innerYOffset, getExcess()])
                cube(getFrameInnerVolume(cutoffVolume, tolerance));
        }
    }
}

// FrameTopCutoff(volume, width, offset=0, tolerance=getTolerance())
// Creates a cube that should be used to cut off a top part of the wall of a frame.
// volume = [width, depth, height] Inner volume (without tolerance)
//   width = Inner width in mm
//   depth = Inner depth in mm
//   height = Height of the walls in mm
// width = Width of the cutoff
// offset = Offset from the center
// tolerance = additional space for the building block (default is reasonable)

module FrameTopCutoff(volume, width, offset=0, tolerance=getTolerance()) {
    translate([(getFrameOuterVolume(volume, tolerance).x - width)/2, 0]) {
        translate([offset, getFrameOuterVolume(volume, tolerance).y - 1.5*getDividerThickness()])
            cube([width, 2*getDividerThickness(), volume.z + getExcess()]);
    }
}

// FrameBottomCutoff(volume, width, offset=0, tolerance=getTolerance())
// Creates a cube that should be used to cut off a bottom part of the wall of a frame.
// volume = [width, depth, height] Inner volume (without tolerance)
//   width = Inner width in mm
//   depth = Inner depth in mm
//   height = Height of the walls in mm
// width = Width of the cutoff
// offset = Offset from the center
// tolerance = additional space for the building block (default is reasonable)

module FrameBottomCutoff(volume, width, offset=0, tolerance=getTolerance()) {
    translate([(getFrameOuterVolume(volume, tolerance).x - width)/2, 0]) {
        translate([offset, -getExcess()])
            cube([width, 2*getDividerThickness(), volume.z + getExcess()]);
    }
}

// FrameLeftCutoff(volume, width, offset=0, tolerance=getTolerance())
// Creates a cube that should be used to cut off a left part of the wall of a frame.
// volume = [width, depth, height] Inner volume (without tolerance)
//   width = Inner width in mm
//   depth = Inner depth in mm
//   height = Height of the walls in mm
// width = Width of the cutoff
// offset = Offset from the center
// tolerance = additional space for the building block (default is reasonable)

module FrameLeftCutoff(volume, width, offset=0, tolerance=getTolerance()) {
    translate([0, (getFrameOuterVolume(volume, tolerance).y - width) / 2]) {
        translate([-getExcess(), offset])
            cube([2*getDividerThickness(), width, volume.z + getExcess()]);
    }
}

// FrameRightCutoff(volume, width, offset=0, tolerance=getTolerance())
// Creates a cube that should be used to cut off a right part of the wall of a frame.
// volume = [width, depth, height] Inner volume (without tolerance)
//   width = Inner width in mm
//   depth = Inner depth in mm
//   height = Height of the walls in mm
// width = Width of the cutoff
// offset = Offset from the center
// tolerance = additional space for the building block (default is reasonable)

module FrameRightCutoff(volume, width, offset=0, tolerance=getTolerance()) {
    translate([0, (getFrameOuterVolume(volume, tolerance).y - width) / 2]) {
        translate([getFrameOuterVolume(volume, tolerance).x - 1.5*getDividerThickness(), offset])
            cube([2*getDividerThickness(), width, volume.z + getExcess()]);
    }
}

// getCutoffOffset(length, count, index, tolerance=getTolerance())
// Gets the cutoff offset for FrameXCutoff with the given index for
// multiple cutoffs,
// length = Length of the wall (without tolerance)
// count = Count of cutoffs
// index = Zero-based index of the cutoff to get the offset for
// tolerance = Tolerance of the complete inner space

function getCutoffOffset(length, count, index, tolerance=getTolerance()) = 
    -((((count % 2) == 0) ? (length / 2) : 0) +      // half length when even, 0.0 when odd
    ((round(count/2) - (index+1)) * length)) *
    (1+(tolerance/(length + tolerance))/2);

// FrameTopCutoffs(volume, count, cutoffWidth)
// Creates count cubes that should be used to cut off top parts of the wall of a frame
// with equal distances.
// volume = [width, depth, height] Inner volume (without tolerance)
//   width = Inner width in mm
//   depth = Inner depth in mm
//   height = Height of the walls in mm
// count = Count of cutoffs
// cutoffWidth = Width of each cutoff

module FrameTopCutoffs(volume, count, cutoffWidth, tolerance=getTolerance()) {
    length = volume.x / count;
    for (index = [0:count-1]) {
        FrameTopCutoff(volume, cutoffWidth, getCutoffOffset(length, count, index, tolerance), tolerance);
    }
}

// FrameBottomCutoffs(volume, count, cutoffWidth)
// Creates count cubes that should be used to cut off top parts of the wall of a frame
// with equal distances.
// volume = [width, depth, height] Inner volume (without tolerance)
//   width = Inner width in mm
//   depth = Inner depth in mm
//   height = Height of the walls in mm
// count = Count of cutoffs
// cutoffWidth = Width of each cutoff

module FrameBottomCutoffs(volume, count, cutoffWidth, tolerance=getTolerance()) {
    length = volume.x / count;
    for (index = [0:count-1]) {
        FrameBottomCutoff(volume, cutoffWidth, getCutoffOffset(length, count, index, tolerance), tolerance);
    }
}

// FrameLeftCutoffs(volume, count, cutoffWidth)
// Creates count cubes that should be used to cut off top parts of the wall of a frame
// with equal distances.
// volume = [width, depth, height] Inner volume (without tolerance)
//   width = Inner width in mm
//   depth = Inner depth in mm
//   height = Height of the walls in mm
// count = Count of cutoffs
// cutoffWidth = Width of each cutoff

module FrameLeftCutoffs(volume, count, cutoffWidth, tolerance=getTolerance()) {
    length = volume.y / count;
    for (index = [0:count-1]) {
        FrameLeftCutoff(volume, cutoffWidth, getCutoffOffset(length, count, index, tolerance), tolerance);
    }
}

// FrameRightCutoffs(volume, count, cutoffWidth)
// Creates count cubes that should be used to cut off top parts of the wall of a frame
// with equal distances.
// volume = [width, depth, height] Inner volume (without tolerance)
//   width = Inner width in mm
//   depth = Inner depth in mm
//   height = Height of the walls in mm
// count = Count of cutoffs
// cutoffWidth = Width of each cutoff

module FrameRightCutoffs(volume, count, cutoffWidth, tolerance=getTolerance()) {
    length = volume.y / count;
    for (index = [0:count-1]) {
        FrameRightCutoff(volume, cutoffWidth, getCutoffOffset(length, count, index, tolerance), tolerance);
    }
}

// FrameRails(volume, distance, height, direction=LeftRight)
// Creates two rails in a frame
// volume = [width, depth, height] Inner volume (without tolerance)
//   width = Inner width in mm
//   depth = Inner depth in mm
//   height = Height of the walls in mm
// distance = Inner distance between the two rails
// height = Height of the rails
// direction = Horizontal or Vertical
// tolerance = additional space for the building block (default is reasonable)

module FrameRails(
    volume, 
    distance=getStudRailDistance(), 
    height=getStudHeight() + getStudTolerance(), 
    direction=Horizontal, 
    tolerance=getTolerance()) {
        
    outerSpace = getFrameOuterVolume(volume, tolerance);
    width = direction ? outerSpace.x : outerSpace.y;
    
    module Rails() {
        railVolume = [
            direction ? width : getDividerThickness(), 
            direction ? getDividerThickness() : width, 
            height];
        Wall(railVolume);
        translate([
            direction ? 0 : distance + getDividerThickness(), 
            direction ? distance + getDividerThickness() : 0])
            Wall(railVolume);
    }
    railsDepth = distance + 2*getDividerThickness();
    depth = direction ? outerSpace.y : outerSpace.x;
    x = direction ? 0 : (depth - railsDepth) / 2;
    y = direction ? (depth - railsDepth) / 2 : 0;
    translate([x, y])
        Rails();
}

// getAngledFrameOuterVolume(width1, depth1, width2, depth2, height, tolerance=getTolerance())
// width1 = Width of the first arm (X direction)
// depth1 = Depth of the first arm. Should be less or equal width1.
// width2 = Width of the second arm (Y direction)
// depth2 = Depth of the second arm. Should be less or equal width2.
// height = Height of the walls
// tolerance = Inner tolerance (Default is default tolerance)

function getAngledFrameOuterVolume(width1, depth1, width2, depth2, height, tolerance=getTolerance()) =
    getFrameOuterVolume([max(width1, depth2), max(width2, depth1), height], tolerance);

// AngledFrame(width1, depth1, width2, depth2, height, tolerance=getTolerance())
// Frame in L shape. Be sure to specify useful values for the sizes
// width1 = Width of the first arm (X direction)
// depth1 = Depth of the first arm. Should be less or equal width1.
// width2 = Width of the second arm (Y direction)
// depth2 = Depth of the second arm. Should be less or equal width2.
// height = Height of the walls
// tolerance = Inner tolerance (Default is default tolerance)

module AngledFrame(width1, depth1, width2, depth2, height, tolerance=getTolerance()) {
    innerSpace1 = getFrameInnerVolume([width1, depth1, height], tolerance);
    innerSpace2 = getFrameInnerVolume([width2, depth2, height], tolerance);
    
    module Frames() {
        Frame([width1, depth1, height], tolerance);
        Frame([depth2, width2, height], tolerance);
    }
    
    difference() {
        Frames();
        translate([getDividerThickness(), innerSpace1.y + getDividerThickness()/2, 0])
            cube([innerSpace2.y, 2*getDividerThickness(), height + 1]);
        translate([innerSpace2.y + getDividerThickness()/2, getDividerThickness(), 0])
            cube([2*getDividerThickness(), innerSpace1.y, height + 1]);
    }
}

// DockableFrame(volume, wallLeft=true, wallTop=true, wallRight=true, wallBottom=true, tolerance=default)
// Dockable frame where walls can be omitted
// volume = [width, depth, height] Inner volume (without tolerance)
// width = Inner width in mm
// depth = Inner depth in mm
// height = Height of the walls in mm
// wall = true if the wall exists, beginning with the left wall
// clockwise. false if the wall is omitted when the box is placed
// at the wall of the surrounding box. In this case, the
// length of the corresponding walls are added to be sunk into
// the walls of the surrounding box.
// tolerance = additional space for the building block (default is reasonable)
// wallExcess = Excess that is integrated into the wall where the frame will be docked. When zero,
// the frame is just an open frame.

module DockableFrame(
    volume, 
    wallLeft=true, 
    wallTop=true, 
    wallRight=true, 
    wallBottom=true,
    tolerance=getTolerance(),
    wallExcess=getDividerThickness()) {

    outerVolume = getFrameOuterVolume(volume, tolerance);

    sinkExtLeft =  wallLeft ? 0 : wallExcess;
    sinkExtTop =  wallTop ? 0 : wallExcess;
    sinkExtRight =  wallRight ? 0 : wallExcess;
    sinkExtBottom =  wallBottom ? 0 : wallExcess;

    Space(outerVolume);
        
    translate([0, 0, -getExcess()]) {
        if (wallLeft)
            translate([0, -sinkExtBottom, 0])
                cube([getDividerThickness(), outerVolume.y + sinkExtBottom + sinkExtTop, outerVolume.z]);
        if (wallTop)
            translate([-sinkExtLeft, outerVolume.y - getDividerThickness(), 0])
                cube([outerVolume.x + sinkExtLeft + sinkExtRight, getDividerThickness(), outerVolume.z]);
        if (wallRight)
            translate([outerVolume.x - getDividerThickness(), -sinkExtBottom, 0])
                cube([getDividerThickness(), outerVolume.y + sinkExtBottom + sinkExtTop, outerVolume.z]);
        if (wallBottom)
            translate([-sinkExtLeft, 0, 0])
                cube([outerVolume.x + sinkExtLeft + sinkExtRight, getDividerThickness(), outerVolume.z]);
    }  
}

// AlignedFrame(volume, alignX=NoAlign, alignY=NoAlign)
// Dockable frame for edges with alignment parameters
// alignX 0=NoAlign 1=AlignLeft 4=AlignRight 
// alignY 0=AlignNo 2=AlignBottom 5=AlignTop
// tolerance = additional space for the building block (default is reasonable)
// wallExcess = Excess that is integrated into the wall where the frame will be docked. When zero,
// the frame is just an open frame.

module AlignedFrame(
    volume,
    alignX=NoAlign,
    alignY=NoAlign,
    tolerance=getTolerance(),
    wallExcess=getDividerThickness()) {
    wallLeft = alignX!=AlignLeft;
    wallTop = alignY!=AlignTop;
    wallRight = alignX!=AlignRight;
    wallBottom = alignY!=AlignBottom;
    DockableFrame(volume, wallLeft, wallTop, wallRight, wallBottom, tolerance, wallExcess);
}

// Axis(height, diameter=4)
// Standing axis.
// height = height of the axis
// diameter = diameter of the axis

module Axis(height, diameter=getStandAxisDiameter()) {
    translate([0, 0, -getExcess()])
        cylinder(height + getExcess(), d = diameter, $fn = getFragments());    
}

// AxisWithSpace(height, space, diameter=4)
// Standing axis with a space plate to be sunk into the bottom
// height = height of the axis without
// space = space (x,y) of the space around the axis
// diameter = diameter of the axis (default standard axis diameter)

module AxisWithSpace(height, space, diameter=getStandAxisDiameter()) {
    Space(space);
    Center(space)
        Axis(height, diameter);
}

// LeveledAxis(height, bottomHeight, diameter=getAxisDiameter())
// Standing axis with a leveled thicker base
// at the top.
// height = height of the complete axis from the ground
// levelHeight = height of the axis leveled base
// diameter = diameter of the upper axis (standard is 4 mm)
// baseDiameter = diameter of the base axis (standard is 5 mm)

module LeveledAxis(height, levelHeight, diameter=getStandAxisDiameter(), baseDiameter=getAxisBottomDiameter()) {
    Axis(levelHeight, baseDiameter);
    Axis(height, diameter);
}

// LeveledAxisWithSpace(height, outerHeight, space, diameter=getAxisDiameter())
// Standing axis with a leveled thicker base and a space plate sunk into the bottom
// height = height of the axis
// levelHeight = height of the leveled axis base
// space = space (x,y) of the space around the axis
// diameter = diameter of the upper axis (standard is 4 mm)
// baseDiameter = diameter of the base axis (standard is 5 mm)

module LeveledAxisWithSpace(height, levelHeight, space, diameter=getStandAxisDiameter(), baseDiameter=getAxisBottomDiameter()) {
    Space(space);
    Center(space)
        LeveledAxis(height, levelHeight, diameter, baseDiameter);
}

// LockingAxis(height = getAxisLockingLength())
// Standing axis for locking axis connectors
// height = Height of the axis

module LockingAxis(height = getAxisLockingLength()) {
    flatThickness = 2.4;
    cutoffVolume = [getAxisDiameter()+1, getAxisDiameter(), height + 1];
    difference() {
        Axis(height);
        translate([-cutoffVolume.x/2, 0]) {
            translate([0, flatThickness/2])
                cube(cutoffVolume);
            translate([0, -cutoffVolume.y - flatThickness/2])
                cube(cutoffVolume);
        }
    }
}

// LockingAxis()
// Standing tube for locking axis
// height = Height of the tube. use a minimum of getAxisLockingLength().

module LockingTube(height=12) {
    difference() {
        heightOfTube = height + getExcess();
        innerDiameter = getAxisDiameter();
        outerDiameter = innerDiameter+2*getTubeWallThickness();
        
        translate([0, 0, -getExcess()])
            cylinder(h = heightOfTube, d = outerDiameter, $fn = getFragments());
        translate([0, 0, getAxisLockingLength()])
            cylinder(h = heightOfTube, d = innerDiameter, $fn = getFragments());        
        scale([1.05, 1.05, 1.05])
            LockingAxis();
    }        
}

// Text(text, xAlign=AlignCenter, yAlign=AlignCenter)
// Writes an elevated text to the bottom of the box
// text = the text to write
// xAlign = Horizontal alignment
// yAlign = Vertical alignment

module Text(text, xAlign=AlignCenter, yAlign=AlignCenter) {
    font = "Liberation Sans";
    
    vAlign = 
        yAlign == AlignBottom ? "bottom" :
        (yAlign == AlignCenter ? "center" : "top");
    hAlign = 
        xAlign == AlignLeft ? "left" :
        (xAlign == AlignCenter ? "center" : "right");
 
    translate([0,0,-getExcess()]) {
        linear_extrude(height = 0.2) {
            text(text = text, font = font, size = 6, valign = vAlign, halign = hAlign);
       }
    }
}

// Divider(distance, align=AlignLeft, height=getSmallPartsFrameHeight(), boxSpace=getBox190Space())
// Creates a divider with the specified distance to the specified wall
// distance = Distance to the wall of the box
// align =  Specifies the wall where the divider is created: AlignLeft, AlignRight, AlignTop or AlignBottom
// height = Height of the divider (standard is 10 mms)
// boxSpace = The space of the box where the divider is placed (standard is box 190x130)

module Divider(distance, align=AlignLeft, height=getSmallPartsFrameHeight(), boxSpace=getBox190Space()) {
    volume = [
        getIsHorizontal(align) ? (boxSpace.x + 2*getDividerThickness()) : getDividerThickness(),
        getIsVertical(align) ? (boxSpace.y + 2*getDividerThickness()) : getDividerThickness(),
        height
    ];
    
    xOffset = (align == AlignLeft) ? distance :
              ((align == AlignRight) ? boxSpace.x - distance - getDividerThickness() : -getDividerThickness());
    yOffset = (align == AlignBottom) ? distance :
              ((align == AlignTop) ? boxSpace.y - distance - getDividerThickness() : -getDividerThickness());
    
    Place(xOffset, yOffset)
        Wall(volume);
}
