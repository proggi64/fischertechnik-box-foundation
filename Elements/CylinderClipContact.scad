// Fischertechnik Box Library
// Cylinder for clip contact
// 31338

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

/* [Hidden] */
width = 6;
depth = 6;
height = 5;

// getCylinderClipContactSpace()
// Gets the space the cylinder for clip contact needs

function getCylinderClipContactSpace() = [width, depth, height];

// CylinderClipContact()
// Standing cylinder for clip contact (as in mini-mot 1)
// 31338

module CylinderClipContact() {
    Space(getCylinderClipContactSpace());
    
    innerDiameter = 3.4;
    Center(getCylinderClipContactSpace())
        Tube(height, innerDiameter=innerDiameter);
}

// Tests
color("lightgray")
CylinderClipContact();