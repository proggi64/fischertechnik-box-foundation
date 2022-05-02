// Fischertechnik Box Library
// Complete Winch Drum with Locking Rings
// 31018 + 2 x 31020

use <../ModelBase/Simple.scad>
use <HolderWinchDrum.scad>
use <FrameLockingRing.scad>

distance = 24.4;

// getHolderWinchDrumWithLockingRingsSpace()
// Gets the space the holder winch drum with locking rings needs as width (.x and .y as a list)

function getHolderWinchDrumWithLockingRingsSpace() = [
    getFrameLockingRingSpace().x, 
    getFrameLockingRingSpace().y * 2 + distance,
    getFrameLockingRingSpace().z];

// HolderWinchDrumWithLockingRings
// Combination of a winch drum holder with two locking ring holders at both ends

module HolderWinchDrumWithLockingRings() {    
    yOffsetFrame = distance + getFrameLockingRingSpace()[1];
    
    Space(getHolderWinchDrumWithLockingRingsSpace());
    
    FrameLockingRing();
    translate([0, yOffsetFrame, 0])
        FrameLockingRing();
    
    xOffset = (getFrameLockingRingSpace()[0] - getHolderWinchDrumSpace()[0]) / 2;
    yOffset = (distance + 2 * getFrameLockingRingSpace()[1] - getHolderWinchDrumSpace()[1]) / 2;
    
    translate([xOffset, yOffset, 0])
        HolderWinchDrum();
}

// Tests
color("lightgray")
HolderWinchDrumWithLockingRings();