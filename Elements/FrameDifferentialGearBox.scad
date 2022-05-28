// Fischertechnik Box Library
// Frame for differential gearbox (/)default 110 mm)
// 31043

use <../ModelBase/Complex.scad>

length = 110;

// getFrameDifferentialGearboxSpace()
// Gets the width (.x) and depth (.y) of the differential gearbox frame.

function getFrameDifferentialGearboxSpace(length=length) = getFrameAxisSpace(length);

// FrameDifferentialGearbox()
// Holder for differential gearbox.
// length = length of the axis of the diferential gearbox (default is 110)

module FrameDifferentialGearbox(length=length) {
    FrameAxis(length);
}

// Test
color("lightgray")
FrameDifferentialGearbox();