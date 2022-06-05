// 3D Print Test
// HolderTire45

use <../TestPrint.scad>
use <../../Elements/HolderTire45.scad>

count = 1;

TestPrint(getHolderTire45Space(count))
    HolderTire45(count);