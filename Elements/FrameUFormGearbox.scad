// Fischertechnik Box Library
// Frame for U form gearbox
// 31068, 31078

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

/* [Hidden] */
width = 30;
depth = 15;
height = 6;
gearDepth = 3;

volume = [width, depth, height];

// getFrameUFormGearboxSpace()
// Gets the space for a U form gearbox including the stud and gear extension

function getFrameUFormGearboxSpace() = getFrameOuterVolume([width + getStudHeight(), depth + gearDepth, height]);

// FrameUFormGearbox()
// Frame for U form gearbox

module FrameUFormGearbox() {
    Space(getFrameUFormGearboxSpace());
    translate([getStudHeight(), 0]) {
        difference() {
            Frame([width, depth, height]);
            studCutoff = 6;            
            translate([-getDividerThickness()/2, (getFrameOuterVolume(volume).y - studCutoff)/2])
                cube([2*getDividerThickness(), studCutoff, height + getExcess()]);
            gearCutoff = studCutoff + width/2 + 2;
            translate([(getFrameOuterVolume(volume).x - gearCutoff)/2, getFrameOuterVolume(volume).y - 1.5*getDividerThickness(), ])
                cube([gearCutoff, 2*getDividerThickness(), height + getExcess()]);
        }
    }
}

// test
color("lightgray")
FrameUFormGearbox();