// Fischertechnik Box Library
// Frame for BT Smart Controller
// 161944

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

include <../Base/PlacementOptions.scad>

width = 60;
depth = 60;
height = 6;

// getFrameBTSmartControllerSpace(alignX, alignY)
// alignX 0=NoAlign 1=AlignLeft 3=AlignCenter 4=AlignRight 
// alignY 0=AlignNo 2=AlignBottom 3=AlignCenter 5=AlignTop
// Gets the space the frame for BT Smart Controller needs as width and depth(.x and .y as a list). 

function getFrameBTSmartControllerSpace(alignX=NoAlign, alignY=NoAlign) = 
    getDockableEdgedFrameSpace([width, depth, height], alignX, alignY);

// FrameBTSmartController(alignX, alignY)
// Frame for TBT Smart Controller.
// alignX 0=NoAlign 1=AlignLeft 3=AlignCenter 4=AlignRight 
// alignY 0=AlignNo 2=AlignBottom 3=AlignCenter 5=AlignTop

module FrameBTSmartController(alignX=NoAlign, alignY=NoAlign) {
    DockableEdgedFrame([width, depth, height], alignX, alignY);
}

// Test
color("lightgray") {
    FrameBTSmartController();
}