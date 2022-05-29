// Fischertechnik Box Library
// Frame for Angle Axis
// 31035

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

include <../Base/PlacementOptions.scad>

width = 34.5;
depth = 34.5;
extra = 1.8;

function getFrameAngleAxisSpace(count=1) = getFrameOuterVolume([
    width + extra + (count-1)*(getFrameAxisSpace().y + extra), 
    depth + extra + (count-1)*(getFrameAxisSpace().y + extra), 
    getFrameAxisHeight()]);

module FrameAngleAxis(count=1) {
    Space(getFrameAngleAxisSpace(count));
    
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

// Test
FrameAngleAxis();