// Fischertechnik Box Library
// Holder for Winch Drum
// 31016

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Hidden] */
width = 20;
depth = 25;
height = 10;

// getWinchDrumHolderSpace()
// Gets the space the winch drum holder needs as width and depth (.x and .y as a list)

function getHolderWinchDrumSpace() = [width, depth, height];

// HolderWinchDrum()
// Two walls for holding the 31016 winch drum.

module HolderWinchDrum() {
    holderDepth = 11.2;
    holderDistance = 8;
    
    Space(getHolderWinchDrumSpace());
    
    module Holders() {
        Wall([getDividerThickness(), holderDepth, height]);
        translate([holderDistance + getDividerThickness(), 0])
            Wall([getDividerThickness(), holderDepth, height]);
    }
    
    Center(getHolderWinchDrumSpace(), [holderDistance + 2*getDividerThickness(), holderDepth]) {
        Holders();
    }
}

// Tests
color("lightgray")
HolderWinchDrum();
