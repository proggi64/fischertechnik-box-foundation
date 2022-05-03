// Fischertechnik Box Library
// Frame for universal joint cardan
// 31044

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

width = 35;
depth = 12;
height = 10;

// getFrameUniversalJointCardanSpace()
// Gets the complete space of the universal joint cardan frame

function getFrameUniversalJointCardanSpace() = getAngledFrameOuterVolume(width, depth, width, depth, height);

// FrameUniversalJointCardan()
// Frame for a universal joint cardan (as mot1)

module FrameUniversalJointCardan() {
    AngledFrame(width, depth, width, depth, height);
    
    innerVolume = getFrameInnerVolume([width, depth, height]);
    
    webEndDistance = 12;
    webHeight = 3;
    Place(getDividerThickness() - getExcess(), getFrameUniversalJointCardanSpace().y - webEndDistance)
        Wall([innerVolume.y+2*getExcess(), getDividerThickness(), webHeight]);
    Place(getFrameUniversalJointCardanSpace().y - webEndDistance, getDividerThickness() - getExcess())
        Wall([getDividerThickness(), innerVolume.y+2*getExcess(), webHeight]);
    Place((innerVolume.y + getDividerThickness()) / 2, getDividerThickness() - getExcess())
        Wall([getDividerThickness(), innerVolume.y+getExcess() - 2, webHeight]);
}

// Test
color("lightgray")
FrameUniversalJointCardan();