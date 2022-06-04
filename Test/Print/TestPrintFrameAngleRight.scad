// 3D Print Test
// FrameAngleRight

use <../TestPrint.scad>
use <../../Elements/FrameAngleRight.scad>

count = 1;

TestPrint(getFrameAngleRightSpace(count))
    FrameAngleRight(count);