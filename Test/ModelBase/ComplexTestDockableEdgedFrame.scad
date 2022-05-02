// Fischertechnik Box Foundation
// ModelBase
// Test DockableEdgedFrame

use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

include <../../Base/PlacementOptions.scad>

DockableEdgedFrame([75, 45, 5]);

translate([100, 0, 0])
    DockableEdgedFrame([45, 75, 5], alignX=AlignLeft);
    
translate([0, 70, 0])
    DockableEdgedFrame([45, 75, 5], alignX=AlignRight);

translate([70, 100, 0])
    DockableEdgedFrame([75, 45, 5], alignX=AlignRight, alignY=AlignTop);

translate([170, 0, 0])
    DockableEdgedFrame([75, 45, 5], alignX=AlignLeft, alignY=AlignBottom);
    
translate([170, 70, 0])
    DockableEdgedFrame([45, 45, 10], alignY=AlignBottom);