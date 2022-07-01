// Fischertechnik Box Library
// Frame for 9V block battery set with switch
// 135719

use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 75;
depth = 30;
height = 6;
volume = [width, depth, height];

// getFrame9VBatterySetSpace(columns=1, rows=1)
// Gets the space of a frame for columns x rows small parts (7.5 or 5)

function getFrame9VBatterySetSpace() = getFrameOuterVolume(volume);

// Frame9VBatterySet()
// Frame for 9V block battery set with switch

module Frame9VBatterySet() {
    Frame(volume);
}

// Tests
color("lightgray")
Frame9VBatterySet();
