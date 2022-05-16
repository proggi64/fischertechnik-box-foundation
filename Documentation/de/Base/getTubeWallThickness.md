# getTubeWallThickness

Funktion: Liefert Stärke der Wände eines Element-Zylinders.

<img width="261" alt="SimpleTestTube" src="https://user-images.githubusercontent.com/48654609/167317804-9f8d3200-190d-41e7-bd2a-7cd4dae81205.png">

Die Wände von Zylindern sind etwas schmäler als die normaler Trennwände. Das Basis-Modul [__Tube__](../ModelBase/Tube.md) verwendet die Funktion.

## Use
```
use <../Base/Constants.scad>
```

## Syntax
```
getTubeWallThickness();
```

## Rückgabewert
Standardwert für die Stärke der Zylinderwände. Dies ist ein um einen kleinen Faktor verringerter Wert von [__getDividerThickness__](getDividerThickness.md).
