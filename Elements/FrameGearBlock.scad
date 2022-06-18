// Fischertechnik Box Library
// Frame for gear block for mini-motor
// 31067

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 52;
depth = 15;
height = 6;

// getFrameGearBlockSpace()
// Gets the space of a frame for a gear block (mini-mot 1)

function getFrameGearBlockSpace() = getFrameOuterVolume([width, depth + getPinHeight() - getDividerThickness(), height]);

// FrameGearBlock()
// frame for a gear block (mini-mot 1)

module FrameGearBlock() {
    Space(getFrameGearBlockSpace());
    blockWidth = 15;
    volume = [blockWidth, depth, height];
    CenterHorizontal(getFrameOuterVolume(volume).x, space=getFrameGearBlockSpace())
    {
        cutoffWidth = 6;
        difference() {
            Frame(volume);
            FrameTopCutoff(volume, cutoffWidth);
            FrameBottomCutoff(volume, cutoffWidth);
        }
    }
}

// Tests
color("lightgray")
FrameGearBlock();