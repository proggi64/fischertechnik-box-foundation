// Fischertechnik Box Library
// Cylinder for standing locking axis 30
// 35063

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 8;
depth = 8;
height = 12;

// getCylinderLockingAxis30Space()
// Gets the space the cylinder for a 30 mm axis needs

function getCylinderLockingAxis30Space() = [width, depth, height];

// CylinderLockingAxis30()
// Standing cylinder for locking axis 30
// 35063

module CylinderLockingAxis30() {
    Space(getCylinderLockingAxis30Space());
    
    Center(getCylinderLockingAxis30Space())
        LockingTube(height);
}

// Tests
color("lightgray")
CylinderLockingAxis30();