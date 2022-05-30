// Fischertechnik Box Library
// Frame for Angle Axis
// 31035

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../Base/Rotation.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

include <../Base/PlacementOptions.scad>

width = 34.5;
depth = 34.5;
extra = 1.8;
difference = getFrameAxisSpace().y + extra;

function getFrameAngleAxisSpace(count=1) = getFrameOuterVolume([
    width + extra + (count-1)*difference, 
    depth + extra + (count-1)*difference, 
    getFrameAxisHeight()]);

module FrameAngleAxis(count=1) {
    Space(getFrameAngleAxisSpace(count));
    
    module Holders() {
        RotateFix(getFrameAngleAxisSpace(), Rotate90) {
            Place(x=extra)
                FrameAxis(single=true);
            
            spaceWithoutExtra = getFrameOuterVolume([
                width,
                depth,
                getFrameAxisHeight()
            ]);

            Place(
                elementSpace=[spaceWithoutExtra.x, getFrameAxisSpace().y], 
                boxSpace = getFrameAngleAxisSpace(),
                alignX = AlignRight,
                rotation = Rotate90)
                FrameAxis(single=true);
        }
    }    

    for (i = [0:count-1])
        translate([difference*i, difference*i])
            Holders();
        
    webVolume = [getFrameAxisSpace().y, getDividerThickness(), getFrameAxisHeight()];
    axisCurveCutoff = 3.0;
    cutoffVolume = [axisCurveCutoff, getDividerThickness()*2, axisCurveCutoff + getExcess()];
    /*
    difference() {
        Wall(webVolume);
        translate([(webVolume.x - cutoffVolume.x)/2, -getDividerThickness()/2, webVolume.z - axisCurveCutoff])
            cube(cutoffVolume);
    }*/
    
}

// Test
FrameAngleAxis(2);