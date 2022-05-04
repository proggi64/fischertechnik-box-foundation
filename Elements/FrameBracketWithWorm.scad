// Fischertechnik Box Library
// Frame  for bracket with worm
// 31045

use <../Base/Constants.scad>
use <../ModelBase/Complex.scad>

// getFrameBracketWithWormSpace()
// Gets the space for a frame for a bracket with worm.

function getFrameBracketWithWormSpace() = getFrameBracketSpace();

// FrameBracketWithWorm()
// Frame for bracket with worm.

module FrameBracketWithWorm() {
    FrameBracket([ 15, getDividerThickness(), 7 ]);
}

// Test
color("lightgray")
FrameBracketWithWorm();