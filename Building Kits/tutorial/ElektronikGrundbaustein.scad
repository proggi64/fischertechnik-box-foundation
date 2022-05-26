// Box 130x95
// h4 G
// Elektronik Grundbeistein
// 39581

use <../../Base/Boxes.scad>
use <../../ModelBase/Simple.scad>

Box130();

boxSpace=getBox130Space();
dividerWidth = 20;

Divider(dividerWidth, boxSpace=boxSpace);
