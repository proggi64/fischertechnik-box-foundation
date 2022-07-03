// Fischertechnik Box Library
// Cylinder for assembled Omni Wheel
// 183025, 183026, 183027, 183028
// CAUTION: Not for standard boxes! Use higher special Box! Wheel is 34 mms, usable height of a box is 33 mms!

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 60;
depth = 60;
height = 34;
volume = [width, depth, height];

// getCylinderOmniWheelSpece()
// Gets the space for an assembled omni wheel

function getCylinderOmniWheelSpece() = volume;

// CylinderOmniWheel()
// Cylinder for an assembled omni wheel

module CylinderOmniWheel() {
    Space(volume);

    tubeHeight = 18;
    tubeDiameter = getHubRingDiameter();
    levelheight = 11;
    levelDiameter = getHubRingLevelDiameter();;

    Center(space=volume)
        LeveledTube(tubeHeight, tubeDiameter, levelheight, levelDiameter);
}

// Test
color("lightgray")
CylinderOmniWheel();