// Fischertechnik Box Foundation
// Constants

// Constant values necessary for multiple elements

// Base constants
dividerThickness = 1.2;
excess = 0.01;
fragments = 90;
tolerance = 0.8;

// Gets the thickness of a divider 
function getDividerThickness() = dividerThickness;

// Gets the excess that is used to merge walls into each other
function getExcess() = excess;

// Gets amount of fragments of a cylinder
function getFragments() = fragments;

// Gets the inner tolerance of a frame to each side
function getTolerance() = tolerance;


// Fischertechnik specific constants
axisDiameter = 4;
axisBottomDiameter = axisDiameter + 1;
standardEdgeDistance = 2.5;
standardWebDistance = 11.5;
standardCornerLength = 15;
tubeWallFactor = 0.8;
smallPartsFrameHeight = 20;

// Gets axis diameter
function getAxisDiameter() = axisDiameter;

// Gets axis bottom diameter for thicker part at the bottom
function getAxisBottomDiameter() = axisBottomDiameter;

// gets the standard distance to the wall of the box for dockable frames with webs
function getStandardEdgeDistance() = standardEdgeDistance;

// gets the standard distance of each web to the corner of the dockable frame
function getStandardWebDistance() = standardWebDistance;

// gets the standard length of the corner walls of a dockable frame
function getStandardCornerLength() = standardCornerLength;

// gets the wall thickness of a tube.
function getTubeWallThickness() = tubeWallFactor * getDividerThickness();

// gets the frame height for docked small parts boxes.
function getSmallPartsFrameHeight() = smallPartsFrameHeight;