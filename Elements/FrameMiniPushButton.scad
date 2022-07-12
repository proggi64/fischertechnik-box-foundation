// Fischertechnik Box Library
// Frame for a mini push button
// 37780
// 37783

use <../Base/Constants.scad>
use <../ModelBase/Simple.scad>

include <../Base/PlacementOptions.scad>

/* [Hidden] */
width = 15;
depth = 7.5;
height = 15;

// getFrameMiniPushButtonSpace()
// Gets the space of a frame for mini push button

function getFrameMiniPushButtonSpace() = getFrameOuterVolume([
    width, 
    depth + getStudHeight() - getDividerThickness(), 
    height]);

// FrameMiniPushButton()
// frame for a gearbox (mot2)

module FrameMiniPushButton() {
    Space(getFrameMiniPushButtonSpace());
    volume = [width, depth, height];
    railDistance = 7.5;
    difference() {
        Frame(volume);
        FrameTopCutoff(volume, railDistance);
    }
    FrameRails(volume, railDistance, direction=Vertical);
}

// Tests
color("lightgray")
FrameMiniPushButton();