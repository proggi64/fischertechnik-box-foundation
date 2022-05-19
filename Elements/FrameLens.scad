// Fischertechnik Box Library
// Frame for Lenses
// 31365, 31366, 31367 

use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

width = 33.5;
depth = 30;
height = 9.0;

// getFrameLensSpace()
// Gets the outer space the lens frame needs.

function getFrameLensSpace() = getFrameOuterVolume([width, depth, height]);

// FrameLens()
// Frame for 30 mm flat lenses.

module FrameLens() {
    FrameSpecialFlat([width, depth, height]);
}

// Tests
color("lightgray") {
    FrameLens();
}
