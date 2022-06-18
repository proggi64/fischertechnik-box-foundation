// Fischertechnik Box Library
// Frame for gear block with worm m 1.5 mm for mini-motor
// 31066

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 46;
depth = 15;
height = 8;
offset = getPinHeight() - getDividerThickness();

// getFrameGearBlockWithWormSpace()
// Gets the space of a frame for a gear block (mini-mot 1)

function getFrameGearBlockWithWormSpace() = getFrameOuterVolume([width, depth + offset, height]);

// FrameGearBlockWithWorm()
// frame for a gear block with worm m 1.5 mm for mini-motor

module FrameGearBlockWithWorm() {
    Space(getFrameGearBlockWithWormSpace());
    blockWidth = 15;
    volume = [blockWidth, depth, height];

    cutoffWidth = 6;
    translate([0, offset]) {
        difference() {
            Frame(volume);
            FrameBottomCutoff(volume, cutoffWidth);
        }
        wallWidth = 19.5;
        wallHeight = 6;
        wallVolume = [wallWidth, getDividerThickness(), wallHeight];
        wallXOffset = getFrameOuterVolume(volume).x + 7.5;
        CenterVertical(wallVolume.y, x=wallXOffset, offset=-getDividerThickness()/2, space=getFrameGearBlockWithWormSpace())
            Wall(wallVolume);
    }
}

// Tests
color("lightgray")
FrameGearBlockWithWorm();