// Fischertechnik Box Foundation
// Test BoxWeb

use <../../Base/Boxes.scad>

include <../../Base/PlacementOptions.scad>

#Box190();

BoxWeb(LowerLeft, LeftOfCorner, 7.5);
BoxWeb(LowerLeft, RightOfCorner, 7.5);

BoxWeb(LowerRight, LeftOfCorner, 5);
BoxWeb(LowerRight, RightOfCorner, 2.5);

BoxWeb(UpperRight, LeftOfCorner, 10);
BoxWeb(UpperRight, RightOfCorner, 15);

BoxWeb(UpperLeft, LeftOfCorner, 20);
BoxWeb(UpperLeft, RightOfCorner, 25);

BoxWeb(UpperLeft, RightOfCorner, 70, webWidth=30, webThickness=5);