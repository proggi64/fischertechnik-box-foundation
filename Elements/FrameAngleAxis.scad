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

// getFrameAngleAxisSpace(count=1)
// Gets the space for frame and holders for multiple angle axis
// count = Count of angle axis

function getFrameAngleAxisSpace(count=1) = getFrameOuterVolume([
    width + extra + (count-1)*difference, 
    depth + extra + (count-1)*difference, 
    getFrameAxisHeight()]);

// FrameAngleAxis(count=1)
// Frame and holders for multiple angle axis
// count = Count of angle axis

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
    
    module Web() {
        baseLength = getFrameAxisSpace().y + (count - 1) * difference;
        webLength = sqrt(baseLength^2 + baseLength^2);
        webOffset = sqrt(getDividerThickness()^2 + getDividerThickness()^2);
        
        webVolume = [webLength - 2*getDividerThickness(), getDividerThickness(), getFrameAxisHeight()];
        
        rotate([0,0,45]) {
            difference() {
                translate([webOffset, 0])
                    Wall(webVolume);
        
                webDifference = sqrt(difference^2 + difference^2);
                singleLength = sqrt(getFrameAxisSpace().y^2 + getFrameAxisSpace().y^2);
                webCutoffHeight = 3.0;
                webCutoffWidth = 3.5;
                cutoffVolume = [webCutoffWidth, getDividerThickness()*2, webCutoffHeight + getExcess()];
                for (xWebCutoffOffset = [0:webDifference:webLength])
                    translate([
                        (singleLength - cutoffVolume.x)/2 + xWebCutoffOffset + (webOffset - getDividerThickness()) , 
                        -getDividerThickness()/2, 
                        webVolume.z - webCutoffHeight])
                        cube(cutoffVolume);
            }
        }
    }

    for (i = [0:count-1])
        translate([difference*i, difference*i])
            Holders();
        
    Web();
}

// Test
color("lightgray")
FrameAngleAxis(3);