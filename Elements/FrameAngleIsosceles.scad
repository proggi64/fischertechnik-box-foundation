// Fischertechnik Box Library
// Frame for isosceles angle blocks
// 31011

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 45 / 4;
depth = 15;
height = 9;

// getFrameAngleEquilateralSpace
// Gets the space the frame angle equilateral needs for count blocks as width and depth (.x and .y as a list)
// count = Count of equilateral angle blocks

function getFrameAngleIsoscelesSpace(count=1) = getFrameOuterVolume([width * count, depth, height]);
/*[
    frameGridWidth * count + 2 * getWallThickness() + getTolerance(), 
    frameGridDepth + 2 * getWallThickness() + getFrameInnerGap()];*/

// FrameAngleIsosceles(count)
// count = Count of angle blocks in x direction
// The walls of the frame are 9 mm high.
// The complete frame has a tolerance of addition 1 mm in each direction.

module FrameAngleIsosceles(count=1) {
    innerVolume = getFrameInnerVolume([width * count, depth, height]);
    Frame(innerVolume);
}

// Tests
color ("lightgray")
FrameAngleIsosceles();