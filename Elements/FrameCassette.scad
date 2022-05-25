// Fischertechnik Box Library
// Frame for Cassette or Rechargeable Battery Pack
// 36518, 35537

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

include <../Base/PlacementOptions.scad>

width = 60;
depth = 60;
height = 6;


// getFrameCassetteSpace(alignX, alignY)
// alignX 0=NoAlign 1=AlignLeft 3=AlignCenter 4=AlignRight 
// alignY 0=AlignNo 2=AlignBottom 3=AlignCenter 5=AlignTop
// Gets the space the frame for a cassette needs as width and depth(.x and .y as a list). 

function getFrameCassetteSpace(alignX=NoAlign, alignY=NoAlign) = 
    getDockableEdgedFrameSpace([width, depth, height], alignX, alignY);

// FrameCassette(alignX, alignY)
// Frame for cassette.
// alignX 0=NoAlign 1=AlignLeft 3=AlignCenter 4=AlignRight 
// alignY 0=AlignNo 2=AlignBottom 3=AlignCenter 5=AlignTop

module FrameCassette(alignX=NoAlign, alignY=NoAlign) {
    DockableEdgedFrame([width, depth, height], alignX, alignY);
}

// Test
color("lightgray") {
    FrameCassette();
}