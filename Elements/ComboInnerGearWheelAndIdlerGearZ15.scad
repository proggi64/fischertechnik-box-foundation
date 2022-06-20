// Fischertechnik Box Library
// Cylinder for inner gear wheel plus axis and cylinder for idler gear Z15
// 35694, 35695

use <../Base/Placement.scad>
use <CylinderInternalGearWheel.scad>
use <AxisAndCylinderIdlerGearZ15.scad>

// getComboInnerGearWheelAndIdlerGearZ15Space()
// Gets the space the inner gear wheel with idler gear combo needs (.x and .y as a list)

function getComboInnerGearWheelAndIdlerGearZ15Space() = getCylinderInternalGearWheelSpace();

// ComboInnerGearWheelAndIdlerGearZ15()
// inner gear wheel with idler gear combo

module ComboInnerGearWheelAndIdlerGearZ15() {
    CylinderInternalGearWheel();
    Center(getCylinderInternalGearWheelSpace(), getAxisAndCylinderIdlerGearZ15Space())
        AxisAndCylinderIdlerGearZ15();
}

//Test
color("lightgray")
ComboInnerGearWheelAndIdlerGearZ15();