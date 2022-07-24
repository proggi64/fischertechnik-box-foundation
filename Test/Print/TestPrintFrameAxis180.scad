// 3D Print Test
// FrameAxis180

use <../TestPrint.scad>
use <../../Elements/FrameAxis180.scad>

count = 1;

TestPrint(getFrameAxis180Space(count))
    FrameAxis180(count);