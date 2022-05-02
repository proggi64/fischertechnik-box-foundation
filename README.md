# Fischertechnik Sorting Box Construction Foundation For OpenSCAD
The foundation library provides a continuously expanding collection of parametric sorting elements, deployment and placement modules, as well as base sorting boxes for the Fischertechnik building blocks system. The results are intended to be printed with 3D printers.

This library is based on the mid-1970's high-grade plastic sorting boxes used by the Fischertechnik building kits. Some sample boxes that are almost identical to the original ones are included.

<img width="429" alt="ec2" src="https://user-images.githubusercontent.com/48654609/166326370-d41d503e-4cff-4b6c-8358-93feec0d171e.png">

The goals of this library is to simplify the contruction of sorting boxes and provide an alternative to using CAD software. However, the elements and element groups may be exported as STLs and used in CAD software, as well.

The library modules are divided in these groups:
- Base
- ModelBase
- Elements
- Test
- Original Building Kits
- Building Kits

## Base
Contains the base functionality of the library:
- Alignment.scad
- Boxes.scad
- Constants.scad
- Deployment.scad
- Placement.scad
- PlacementOptions.scad
- Rotation.scad

Additionally, in the base folder are the STL files of the empty 190x130 and 130x95 boxes that are used to place the building block elements.

## ModelBase
Contains simple and complex parametrized base objects that are used with different parameters by concrete elements.

## Elements
Contains concrete elements for specific building parts, some of them with parameters. All of them are linked to one or more Fischertechnik part numbers.

## Test
Contains sample code for each module that demonstrate the parameters und functionality.

## Original Building Kits
Contains boxes that are almost identical to existing boxes from the 1970's and 1980's that demonstrate how to build boxes with the library.

## Building Kits
Contains boxes for newer building kits from the last 20 years or so, that never had there own sorting box. These boxes are completely new designs. Each bulding kit series has its own subfolder (i.e. "ec", "em").
