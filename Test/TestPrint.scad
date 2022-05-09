// 3D Print Test Base

use <../Base/Constants.scad>

use <../Elements/AxisClip10.scad>

module TestPrint(elementSpace) {
    cube([elementSpace.x, elementSpace.y, 0.4]);
    translate([0,0,0.4+getExcess()]) {
        children();
    }
}

TestPrint(getAxisClip10Space())
    AxisClip10();