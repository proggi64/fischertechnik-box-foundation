// Fischertechnik Box Library
// Frame for 9V block battery set with switch
// 135719

use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

/* [Element Parameters] */
alignX = 0;   // [0:NoAlign, 1:AlignLeft, 4:AlignRight]
alignY = 0;   // [0:NoAlign, 2:AlignBottom, 5:AlignTop]

/* [Hidden] */
width = 75;
depth = 30;
height = 6;
volume = [width, depth, height];

// getFrame9VBatterySetSpace(columns=1, rows=1)
// Gets the space of a frame for columns x rows small parts (7.5 or 5)

function getFrame9VBatterySetSpace() = getFrameOuterVolume(volume);

// Frame9VBatterySet(alignX, alignY)
// Frame for 9V block battery set with switch
// alignX 0=NoAlign 1=AlignLeft 4=AlignRight 
// alignY 0=AlignNo 2=AlignBottom 5=AlignTop

module Frame9VBatterySet(alignX=NoAlign, alignY=NoAlign) {
    AlignedFrame(volume, alignX, alignY);
}

// Tests
color("lightgray")
Frame9VBatterySet();
