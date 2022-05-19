# getDepthPerPlate

Funktion: Liefert die Tiefe (Dicke) einer Bauplatte für [__HolderBuildingPlate__](HolderBuildingPlate.md).

Diese Tiefe wird vom Modul [__HolderBuildingPlate__](HolderBuildingPlate.md) verwendet, um die Abstände der Halter zu errechnen. Dies ist für Teile wie die Bauplatten 30x90 (Art.Nr. 38251).

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
getDepthPerPlate();
```

## Rückgabewert
Tiefe einer Bauplatte inklusive Toleranz und Pinlänge.
