// Fischertechnik Box Library
// Frame for block 5 with two studs
// 37238

use <../Base/Constants.scad>
use <../Base/Placement.scad>
use <../ModelBase/Simple.scad>

/* [Element Parameters] */
count = 1;

/* [Hidden] */
width = 15;
depth = 5;
height = 8;

// getFrameBlock5TwoStudsSpace(count=1)
// Gets the space of a frame for count block 5 with two studs

function getFrameBlock5TwoStudsSpace(count=1) = getFrameOuterVolume([width * count, depth, height]);


// FrameBlock5TwoStuds(count=1)
// Frame for count block 5 with two studs

module FrameBlock5TwoStuds(count=1) {
    space = [
        getFrameBlock5TwoStudsSpace(count).x, 
        depth + 2*getStudHeight(), 
        getFrameBlock5TwoStudsSpace(count).z];
    Space(space);
    volume = [width * count, depth, height];

    CenterVertical(getFrameBlock5TwoStudsSpace(count).y, space=space) {
        difference() {
            Frame(volume);
            cutoffWidth = 5;
            FrameTopCutoffs(volume, count, cutoffWidth);
            FrameBottomCutoffs(volume, count, cutoffWidth);
        }
    }
}

// Tests
color("lightgray")
FrameBlock5TwoStuds(count);