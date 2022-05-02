// Fischertechnik Box Foundation
// ModelBase
// Test RailsBasePlate

use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

RailsBasePlate(90, 90);

translate([100, 0])
    RailsBasePlate(180, 90);