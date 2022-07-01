// Fischertechnik Box Library
// Frame for locking winch drum in holder
// 35070 and 35069

use <../ModelBase/Simple.scad>

/* [Hidden] */
distance = 8.9;
height = 2.7;
volume = [30, 15, 10];
outerDepth = 20;
sideHeight = 6;

// getComboLockingWinchDrumAndHolderSpace()
// Gets the space the locking winch drum with holder needs

function getComboLockingWinchDrumAndHolderSpace() = [
    getFrameOuterSpace(volume).x,
    outerDepth,
    getFrameOuterSpace(volume).z ];

// ComboLockingWinchDrumAndHolder()
// Locking winch drum with holder

module ComboLockingWinchDrumAndHolder() {
    FrameRails(volume, distance, height);
    difference() {
        Frame(volume);
        translate([0, 0, sideHeight]) {
            FrameTopCutoff(volume, getFrameInnerVolume(volume).x);
            FrameBottomCutoff(volume, getFrameInnerVolume(volume).x);
        }
    }
}

// test
color("lightgray")
ComboLockingWinchDrumAndHolder();