// Fischertechnik Box Library
// Frames for brackets with and without worm
// 31045 + 31046

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../Base/Deployment.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>
use <FrameBracketWithWorm.scad>
use <FrameBracketWithoutWorm.scad>

include <../Base/PlacementOptions.scad>

outerDepth = 31.5;

// getFrameBracketComboSpace()
// Gets the space for a frame for a combination of brackets with worm and without worm.

function getFrameBracketComboSpace() = [getFrameBracketSpace().x, outerDepth];

// FrameBracketCombo()
// Frame for a combination of brackets with worm and without worm.

module FrameBracketCombo() {
    Space(getFrameBracketComboSpace());
    Frame([getFrameBracketWidth(), outerDepth - 2*getDividerThickness() - getTolerance(), getFrameBracketSpace().z]);
    DeployVertical(outerDepth, [getFrameBracketWithWormSpace(), getFrameBracketWithoutWormSpace()]) {
        FrameBracketWithWorm();
        FrameBracketWithoutWorm();
    }
}

// Test
color("lightgray")
FrameBracketCombo();