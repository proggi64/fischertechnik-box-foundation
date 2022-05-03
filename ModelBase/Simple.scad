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

// Tube(height, innerDiameter)
// Standing tube, with it's center at 0,0. Use Center without elementSpace to center in a space.
// height = Height of the tube's wall
// diameter = Diameter of the outer tube

module Tube(height, diameter) {
    difference() {
        heightOfTube = height + getExcess();
        cutoffDiameter = diameter - getTubeWallThickness();
        
        cylinder(h = heightOfTube, d = diameter, $fn = getFragments());
        translate([0, 0, getExcess()])
            cylinder(h = heightOfTube, d = cutoffDiameter, $fn = getFragments());
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
// width = Inner width in mm
// depth = Inner depth in mm
// height = Height of the walls in mm
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
// width = Inner width in mm
// depth = Inner depth in mm
// height = Height of the walls in mm
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
// width = Inner width in mm
// depth = Inner depth in mm
// height = Height of the walls in mm
// tolerance = additional space for the building block (default is reasonable)

module Frame(volume, tolerance=getTolerance()) {
    outerVolume = getFrameOuterVolume(volume, tolerance);
    innerOffset = getDividerThickness();

    translate([0,0,-getExcess()]) {
        difference() {
            cube(outerVolume);
            translate([innerOffset, innerOffset, getExcess()])
                cube(getFrameInnerVolume(volume, tolerance));
        }
    }
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

// Dockable frame for small parts
// DockableFrame(volume, wallLeft=true, wallTop=true, wallRight=true, wallBottom=true, tolerance=default)
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
// wallExcess = Excess taht is integrated into the wall where the frame will be docked. When zero,
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

// Axis(height, diameter=4)
// Standing axis.
// height = height of the axis
// diameter = diameter of the axis

module Axis(height, diameter=getAxisDiameter()) {
    translate([0, 0, -getExcess()])
        cylinder(height + getExcess(), d = diameter, $fn = getFragments());    
}

// AxisWithSpace(height, space, diameter=4)
// Standing axis with a space plate to be sunk into the bottom
// height = height of the axis without
// space = space (x,y) of the space around the axis
// diameter = diameter of the axis (default standard axis diameter)

module AxisWithSpace(height, space, diameter=getAxisDiameter()) {
    Space(space);
    Center(space)
        Axis(height, diameter);
}

// LeveledAxis(height, bottomHeight)
// Standing axis with a leveled thicker base
// at the top.
// height = height of the complete axis from the ground
// levelHeight = height of the axis leveled base

module LeveledAxis(height, levelHeight) {
    Axis(levelHeight, getAxisBottomDiameter());
    Axis(height, getAxisDiameter());
}

// LeveledAxisWithSpace(height, outerHeight, space)
// Standing axis with a leveled thicker base and a space plate sunk into the bottom
// height = height of the axis
// levelHeight = height of the leveled axis base
// space = space (x,y) of the space around the axis

module LeveledAxisWithSpace(height, levelHeight, space) {
    Space(space);
    Center(space)
        LeveledAxis(height, levelHeight);
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
