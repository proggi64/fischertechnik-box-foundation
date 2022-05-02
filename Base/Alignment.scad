// Fischertechnik Box Foundation
// Geometry Helpers Alignment

include <PlacementOptions.scad>

// getAlignedX(elementWidth, spaceWidth, align=AlignRight, offset=0)
// Gets the aligned X offset of an element with the given
// width in the given space.
// elementWidth = The width of the element to positon
// spaceWidth = The space where the element should be aligned
// align = 0 AlignLeft, 1 AlignCenter, 2 AlignRight
// offset = an optional offset from the aligned position. When
// aligned left or centered, then positive values are in X direction.
// When aligned right then positive values are in negative X direction.

function getAlignedX(elementWidth, spaceWidth, align=AlignRight, offset=0) =
    (align == AlignLeft) ?
        offset :
        ((align == AlignCenter) ?
        (spaceWidth - elementWidth)/2 + offset :
        spaceWidth - offset - elementWidth);

// getAlignedY(elementDepth, spaceDepth, align=AlignTop, offset=0)
// Gets the aligned Y offset of an element with the given
// depth in the given space.
// elementDepth = The depth of the element to positon
// spaceDepth = The space where the element should be aligned
// align = 0 AlignBottom, 1 AlignCenter, 2 AlignTop
// offset = an optional offset from the aligned position. When
// aligned bottom or centered, then positive values are in Y direction.
// When aligned top then positive values are in negative Y direction.

function getAlignedY(elementDepth, spaceDepth, align=AlignTop, offset=0) =
    (align == AlignBottom) ?
        offset :
        ((align == AlignCenter) ?
        (spaceDepth - elementDepth)/2 + offset :
        spaceDepth - offset - elementDepth);
