// Fischertechnik Box Library
// Cylinder for inner gear wheel plus axis and cylinder for idler gear Z15
// 35694, 35695

use <../Base/Placement.scad>
use <CylinderInternalGearWheel.scad>
use <AxisAndCylinderIdlerGearZ15.scad>


function getComboInnerGearWheelAndIdlerGearZ15Space() = getCylinderInternalGearWheelSpace();

module ComboInnerGearWheelAndIdlerGearZ15() {
    CylinderInternalGearWheel();
    Center(getCylinderInternalGearWheelSpace(), getAxisAndCylinderIdlerGearZ15Space())
        AxisAndCylinderIdlerGearZ15();
}

//Test
color("lightgray")
ComboInnerGearWheelAndIdlerGearZ15();