// Fischertechnik Box Library
// Frame for Plane Mirror
// 31368 

use <../ModelBase/Simple.scad>
use <../ModelBase/Complex.scad>

/* [Hidden] */
width = 15;
depth = 30;
height = 8.0;

// getFramePlaneMirrorSpace()
// Gets the outer space the aperture frame needs.

function getFramePlaneMirrorSpace() = getFrameOuterVolume([width, depth, height]);

// FramePlaneMirror()
// Frame for a 15x30 mm plane mirror.

module FramePlaneMirror() {
    
    FrameSpecialFlat([width, depth, height]);
}

// Tests
color("lightgray") {
    FramePlaneMirror();
}
