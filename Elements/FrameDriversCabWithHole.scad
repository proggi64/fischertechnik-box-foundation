// Fischertechnik Box Library
// Driver's Cab with Hole
// 38443

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

width = 45;
depth = 30;
height = 10;

// getFrameDriversCabWithHoleSpace()
// Gets the space the frame driver's cab with hole needs as width (.x and .y as a list)

function getFrameDriversCabWithHoleSpace() = getFrameOuterVolume([width, depth, height]);

// FrameDriversCabWithHole()
// Frame for Driver's Cab With Hole
// 38443

module FrameDriversCabWithHole() {
    Frame([width, depth, height]);
}

// Test
color("lightgray") {
FrameDriversCabWithHole();
}