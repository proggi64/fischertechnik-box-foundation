// Box 190x130
// Electronics Box 2/3
// 524326

use <../../Base/Constants.scad>
use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

use <../../Elements/FrameRack60.scad>   // 2x
use <../../Elements/CylinderHub.scad>   // 1x
use <../../Elements/AxisLockingAxisCoupling.scad>   // 1x
use <../../Elements/CylinderHubWithZ30.scad>    // 1x

include <../../Base/PlacementOptions.scad>

Box190();

Place(rotation=Rotate90, elementSpace=getFrameRack60Space(2))
    FrameRack60(2, alignX=AlignRight, alignY=AlignBottom);

xDistZ30 = 3;
yDistZ30 = 2;
xZ30 = getFrameRack60Space(2).y + xDistZ30;
Place(x=xZ30, y=yDistZ30)
    CylinderHubWithZ30();

yDistHub = 3;
xHub = (getFrameRack60Space(2).y - getCylinderHubSpace().x) / 2;
yHub = getFrameRack60Space(2).x + yDistHub;
Place(x=xHub, y=yHub)
    CylinderHub();