// Fischertechnik Box Library
// Frames for brackets with and without worm
// 31045 + 31046

use <../Base/Constants.scad>
use <../Base/Deployment.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>
use <FrameBracketWithWorm.scad>
use <FrameBracketWithoutWorm.scad>

include <../Base/PlacementOptions.scad>

outerDepth = 31.5;

// getComboFrameBracketsSpace()
// Gets the space for a frame for a combination of brackets with worm and without worm.

function getComboFrameBracketsSpace() = [getFrameBracketSpace().x, outerDepth];

// ComboFrameBrackets()
// Frame for a combination of brackets with worm and without worm.

module ComboFrameBrackets() {
    Space(getComboFrameBracketsSpace());
    Frame([getFrameBracketWidth(), outerDepth - 2*getDividerThickness() - getTolerance(), getFrameBracketSpace().z]);
    DeployVertical(outerDepth, [getFrameBracketWithWormSpace(), getFrameBracketWithoutWormSpace()], [Rotate0, Rotate0]) {
        FrameBracketWithWorm();
        FrameBracketWithoutWorm();
    }
}

// Test
color("lightgray")
ComboFrameBrackets();