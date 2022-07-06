// 3D Print Test
// FrameBlock5TwoPins

use <../TestPrint.scad>
use <../../Elements/FrameBlock5TwoPins.scad>

count=1;

TestPrint(getFrameBlock5TwoPinsSpace(count))
    FrameBlock5TwoPins(count);