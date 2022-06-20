// Fischertechnik Box Library
// Frame for TX/TXT controller
// 153513, 173067, 500995, 

use <../ModelBase/Complex.scad>

include <../Base/PlacementOptions.scad>

/* [Hidden] */
width = 90;
depth = 90;
height = 6;

// getFrameTXTControllerSpace(alignX, alignY)
// alignX 0=NoAlign 1=AlignLeft 3=AlignCenter 4=AlignRight 
// alignY 0=AlignNo 2=AlignBottom 3=AlignCenter 5=AlignTop
// Gets the space the frame for a TXT Controller needs as width and depth(.x and .y as a list). 

function getFrameTXTControllerSpace(alignX=NoAlign, alignY=NoAlign) = 
    getDockableEdgedFrameSpace([width, depth, height], alignX, alignY);

// FrameTXTController(alignX, alignY)
// Frame for TXT controller.
// alignX 0=NoAlign 1=AlignLeft 3=AlignCenter 4=AlignRight 
// alignY 0=AlignNo 2=AlignBottom 3=AlignCenter 5=AlignTop

module FrameTXTController(alignX=NoAlign, alignY=NoAlign) {
    DockableEdgedFrame([width, depth, height], alignX, alignY);
}

// Test
color("lightgray") {
    FrameTXTController();
}