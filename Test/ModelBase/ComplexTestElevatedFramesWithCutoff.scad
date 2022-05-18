// Fischertechnik Box Foundation
// ModelBase
// Test ElevatedFramesWithCutoff

use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

ElevatedFramesWithCutoff([30, 4, 4], 4.2, 15, 8);

translate([40, 0])
    ElevatedFramesWithCutoff([40, 4, 4], 5, 10, 5, true);
    
translate([0, 20])
    ElevatedFramesWithCutoff([40, 20, 15], 20, 20, 10);