// Fischertechnik Box Library
// Frame for single Cranked Axis
// 31080

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

length = 125;
holderOffset = 20.5;

// getFrameCrankedAxisSpace()
// Gets the space (.x, .y) the holder for the cranked axis needs

function getFrameCrankedAxisSpace() = [getFrameAxisSpace(length).x, holderOffset + getFrameAxisSpace(length).y];

// FrameCrankedAxis()
// Holder for a single cranked axis

module FrameCrankedAxis() {
    FrameAxis(length);
    
    holderLength = 17 + 2*getDividerThickness();
    xOffset = ((length + getTolerance()) - holderLength)/2;
    yOffset = getAxisDiameter();

    spaceWidth = holderLength + getTolerance();
    
    translate([xOffset, yOffset, 0]) {
        Space([spaceWidth, holderOffset]);
    }
    
    translate([xOffset, holderOffset, 0]) {
        FrameAxis(holderLength, true);
    }
}

// Tests
color("lightgray") {
FrameCrankedAxis();
}
