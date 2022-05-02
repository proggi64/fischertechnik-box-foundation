// Fischertechnik Box Foundation
// ModelBase
// Test Text

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

Text("Hello Default");

Place(0, 20)
Text("Hello xAlign Center", xAlign=AlignCenter);

Place(0, 40)
Text("Hello xAlign Right", xAlign=AlignRight);

Place(0, 60)
Text("Hello xAlign Left", xAlign=AlignLeft);

Place(0, -20)
Text("Hello 20 yAlign Top", yAlign=AlignTop);

Place(0, -40)
Text("Hello 40 yAlign Bottom", yAlign=AlignBottom);
