// Fischertechnik Box Foundation
// ModelBase
// Test Text

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

color("blue") {
Text("Default");

Place(0, 20)
Text("xAlign Center", xAlign=AlignCenter);

Place(0, 40)
Text("xAlign Right", xAlign=AlignRight);

Place(0, 60)
Text("xAlign Left", xAlign=AlignLeft);

Place(40, 0)
Text("yAlign Top", yAlign=AlignTop);

Place(-40, 0)
Text("yAlign Bottom", yAlign=AlignBottom);
}