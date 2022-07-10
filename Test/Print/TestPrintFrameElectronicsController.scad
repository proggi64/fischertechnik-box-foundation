// 3D Print Test
// FrameElectronicsController

use <../TestPrint.scad>
use <../../Elements/FrameElectronicsController.scad>

/* [Element Parameters] */
alignX = 0;   // [0:NoAlign, 1:AlignLeft, 4:AlignRight]
alignY = 0;   // [0:NoAlign, 2:AlignBottom, 5:AlignTop]

TestPrint(getFrameElectronicsControllerSpace())
    FrameElectronicsController(alignX, alignY);