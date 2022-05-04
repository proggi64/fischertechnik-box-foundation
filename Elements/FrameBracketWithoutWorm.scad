// Fischertechnik Box Library
// Frame  for bracket without worm
// 31046

use <../Base/Constants.scad>
use <../ModelBase/Complex.scad>

// getFrameBracketWithoutWormSpace()
// Gets the space for a frame for a bracket with worm.

function getFrameBracketWithoutWormSpace() = getFrameBracketSpace();

// FrameBracketWithoutWorm()
// Frame for bracket with worm.

module FrameBracketWithoutWorm() {
    FrameBracket([ 10, getDividerThickness(), 13 ]);
}

// Test
color("lightgray")
FrameBracketWithoutWorm();