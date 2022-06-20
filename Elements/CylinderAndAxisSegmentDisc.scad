// Fischertechnik Box Library
// Cylinder with two axis and a web for a segment disc
// 31037

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

use <CylinderGearZ20.scad>

/* [Hidden] */
width = 52;
depth = 52;

function getCylinderAndAxisSegmentDiscSpace() = [width, depth];

// CylinderAndAxisSegmentDisc
// Cylinder with two axis and a web for a segment disc

module CylinderAndAxisSegmentDisc() {
    Space(getCylinderAndAxisSegmentDiscSpace());

    xOffset = 2.8;
    yOffset = (getCylinderAndAxisSegmentDiscSpace().y - getCylinderGearZ20Space().y)/2;

    axisHeight = getCylinderGearZ20Height();

    translate([xOffset, yOffset, 0]) {
        CylinderGearZ20();

        centerDistance = 17.5;
        diameter = getAxisDiameter() - 0.4;

        Center(space=getCylinderGearZ20Space()) { 
            translate([sin(150)*centerDistance, cos(150)*centerDistance])           
                Axis(axisHeight, diameter=diameter);
            translate([sin(30)*centerDistance, cos(30)*centerDistance])           
                Axis(axisHeight, diameter=diameter);
        }
    }

    webHeight = 9.3;
    webOffset = 40;
    webDepth = 34.8;
    webVolume = [getDividerThickness(), webDepth, webHeight];

    CenterVertical(depth=webDepth, x=webOffset, space=getCylinderAndAxisSegmentDiscSpace())
        Wall(webVolume);
}

// Test
color("lightgray")
CylinderAndAxisSegmentDisc();
