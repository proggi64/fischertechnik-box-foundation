// 3D Print Test
// ComboFlatHubLargePulleyWheel

use <../TestPrint.scad>
use <../../Elements/ComboFlatHubLargePulleyWheel.scad>

height = 10;

TestPrint(getComboFlatHubLargePulleyWheelSpace())
    ComboFlatHubLargePulleyWheel(height);