// 3D Print Test
// HolderBuildingPlate15x60

use <../TestPrint.scad>
use <../../Elements/HolderBuildingPlate15x60.scad>

count=1;
dock=false;

TestPrint(getHolderBuildingPlate15x60Space(count))
    HolderBuildingPlate15x60(count, dock);