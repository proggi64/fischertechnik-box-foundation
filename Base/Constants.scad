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
axisTolerance = 0.2;
axisLockingLength = 8;

// Gets axis diameter of Fischertechnik axis
function getAxisDiameter() = axisDiameter;

// Gets axis diameter tolerance (subtracted for element axis)
function getAxisTolerance() = axisTolerance;

// Gets the axis diameter for standing axis
function getStandAxisDiameter() = getAxisDiameter() - getAxisTolerance();

// Gets axis bottom diameter for thicker part at the bottom
function getAxisBottomDiameter() = axisBottomDiameter;

// Gets the lengthh of the locking part of a locking axis
function getAxisLockingLength() = axisLockingLength;

// Studs

studHeight = 2.5;
studTolerance = 0.2;
studRailDistance = 9;   // as in ft 50

// gets the height of a connecting stud
function getStudHeight() = studHeight;

// gets the connecting stud height tolerance
function getStudTolerance() = studTolerance;

// gets the default rail distance for studs
function getStudRailDistance() = studRailDistance;

// Dockable Frame with Edge

standardEdgeDistance = 2.5;
standardWebDistance = 11.5;
standardCornerLength = 15;

// gets the standard distance to the wall of the box for dockable frames with webs
function getStandardEdgeDistance() = standardEdgeDistance;

// gets the standard distance of each web to the corner of the dockable frame
function getStandardWebDistance() = standardWebDistance;

// gets the standard length of the corner walls of a dockable frame
function getStandardCornerLength() = standardCornerLength;

// Tubes

tubeWallFactor = 0.8;

// gets the wall thickness of a tube.
function getTubeWallThickness() = tubeWallFactor * getDividerThickness();

// Small Parts and Divider Frame

smallPartsFrameHeight = 20;

// gets the frame height for docked small parts boxes.
function getSmallPartsFrameHeight() = smallPartsFrameHeight;

// Hubs

hubRingDiameter = 19.5;
hubRingLevelDiameter = 21;

// gets the diameter of a tube matching the inner ring of a wheel
function getHubRingDiameter() = hubRingDiameter;

// gets the diameter of a hub tube with a thicker diameter
function getHubRingLevelDiameter() = hubRingLevelDiameter;

// Struts

strutAddLength = 9.0;
strutDepth = 8.0;

// gets the full length of a strut
function getFullStrutLength(length) = length + strutAddLength;

// gets the radius of the end of a strut
function getStrutEndRadius() = strutAddLength / 2;

// gets the the depth of a strut
function getStrutDepth() = strutDepth;

// Propeller

propellerAxisDiameter = 7.0;
propellerAxisTolerance = 0.2;

// gets the propeller axis outer diameter
function getPropellerAxisDiameter() = propellerAxisDiameter;

// gets the propeller axis printing tolerance
function getPropellerAxisTolerance() = propellerAxisTolerance;