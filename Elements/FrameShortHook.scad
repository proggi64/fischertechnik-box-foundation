// Fischertechnik Box Library
// Frame for Short Hook
// 38225

use <../ModelBase/Simple.scad>

width = 7.8;
depth = 7.8;
height = 8;

// getFrameShortHookSpace()
// Gets the space of a frame for a short hook

function getFrameShortHookSpace() = getFrameOuterVolume([width, depth, height]);

// FrameShortHook()
// Frame for short hook.

module FrameShortHook() {
    Frame([width, depth, height]);
}

// Tests
color("lightgray")
FrameShortHook();