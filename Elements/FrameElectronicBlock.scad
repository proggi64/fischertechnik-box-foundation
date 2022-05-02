// Fischertechnik Box Library
// Frame for Electronic Blocks ("Silberlinge")
// 36391,36392,36393,36394,36479,36480,36481,36482,36483

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

include <../Base/PlacementOptions.scad>

width = 45;
depth = 75;
height = 6;

// getFrameCassetteSpace(edges)
// getFrameElectronicBlockSpace(alignX, alignY)
// alignX 0=NoAlign 1=AlignLeft 3=AlignCenter 4=AlignRight 
// alignY 0=AlignNo 2=AlignBottom 3=AlignCenter 5=AlignTop
// Gets the space the frame for a cassette needs as width and depth(.x and .y as a list). 

function getFrameElectronicBlockSpace(alignX=NoAlign, alignY=NoAlign) = 
    getDockableEdgedFrameSpace([width, depth, height], alignX, alignY);

// FrameElectronicBlock(alignX, alignY)
// Frame for cassette.
// alignX 0=NoAlign 1=AlignLeft 3=AlignCenter 4=AlignRight 
// alignY 0=AlignNo 2=AlignBottom 3=AlignCenter 5=AlignTop

module FrameElectronicBlock(alignX=NoAlign, alignY=NoAlign) {
    DockableEdgedFrame([width, depth, height], alignX, alignY);
}

// Test
color("lightgray") {
    FrameElectronicBlock();
}