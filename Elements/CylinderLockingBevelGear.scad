// Fischertechnik Box Library
// Cylinder for standing locking bevel gear
// 35061

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 12;
depth = 12;
height = 12;

// getCylinderLockingBevelGearSpace()
// Gets the space the cylinder for a locking bevel gear

function getCylinderLockingBevelGearSpace() = [width, depth, height];

// CylinderLockingBevelGear()
// Standing cylinder for a locking bevel gear
// 35061

module CylinderLockingBevelGear() {
    Space(getCylinderLockingBevelGearSpace());
    
    Center(getCylinderLockingBevelGearSpace())
        LockingTube(height);
}

// Tests
color("lightgray")
CylinderLockingBevelGear();