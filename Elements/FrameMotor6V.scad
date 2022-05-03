// Fischertechnik Box Library
// Frame for Motor 6V
// 31039

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

width = 51;
depth = 42;
height = 6;

connectionDepth = 3;

// getFrameUniversalJointCardanSpace()
// Gets the complete space of the 6V motor frame

function getFrameMotor6VSpace() = getFrameOuterVolume([width, depth + connectionDepth, height]);

// FrameMotor6V()
// Frame for the 6V standard motor (as mot1)

module FrameMotor6V() {
    Space(getFrameMotor6VSpace());
    difference() {
        Frame([width, depth, height]);
    
        connectorCutoffWidth = 32;
        connectCutoffVolume = [connectorCutoffWidth, 6, height + 1];
        Place(
            boxSpace=getFrameMotor6VSpace(), 
            elementSpace=connectCutoffVolume,
            alignX=AlignCenter, alignY=AlignTop)
            cube(connectCutoffVolume);
        
        cableCutoffWidth = 9;
        cableCutoffOffset = 8;
        cableCutoffVolume = [cableCutoffWidth, 2*getDividerThickness(), height + 1];
        Place(
            x=cableCutoffOffset + getDividerThickness(),
            y = -getDividerThickness()/2,
            boxSpace=getFrameMotor6VSpace(), 
            elementSpace=cableCutoffVolume)
            cube(cableCutoffVolume);        
    }
}

// Test
color("lightgray")
FrameMotor6V();