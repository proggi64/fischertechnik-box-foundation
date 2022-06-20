// Fischertechnik Box Library
// Cylinder for standing step-up/step-down cog
// 31052

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

/* [Hidden] */
width = 18;
depth = 18;
height = 6;

// getCylinderStepUpDownCogSpace()
// Gets the space the cylinder for a step-up/step-down cog needs

function getCylinderStepUpDownCogSpace() = [width, depth, height];

// CylinderAxis30()
// Standing cylinder for a step-up/step-down cog (mot1)
// 31052

module CylinderStepUpDownCog() {
    Space(getCylinderStepUpDownCogSpace());
    
    Center(getCylinderStepUpDownCogSpace())
        Tube(height, innerDiameter=getFrameAxisDepth());
}

// Tests
color("lightgray")
CylinderStepUpDownCog();