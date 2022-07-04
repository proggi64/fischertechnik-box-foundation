// 3D Print Test
// FrameBuildingPlate5x15x30

use <../TestPrint.scad>
use <../../Elements/FrameBuildingPlate5x15x30.scad>

count=1;

TestPrint(getFrameBuildingPlate5x15x30Space(count))
    FrameBuildingPlate5x15x30(count);