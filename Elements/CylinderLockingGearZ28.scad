// Fischertechnik Box Library
// Cylinder for standing locking axis with gear Z28
// 31082

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

/* [Hidden] */
width = 15;
depth = 15;
height = 12;

// getCylinderLockingGearZ28Space()
// Gets the space the cylinder for a 30 mm axis needs

function getCylinderLockingGearZ28Space() = [width, depth, height];

// CylinderLockingGearZ28()
// Standing cylinder for locking axis with gear Z28
// 31034

module CylinderLockingGearZ28() {
    Space(getCylinderLockingGearZ28Space());
    
    Center(getCylinderLockingGearZ28Space())
        LockingTube(height);
}

// Tests
color("lightgray")
CylinderLockingGearZ28();