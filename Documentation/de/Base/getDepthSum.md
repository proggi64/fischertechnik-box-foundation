# getDepthSum

Funktion: Liefert die Summe der Tiefen aller angegebenen Flächen und berücksichtigt die angegebenen Drehungen dieser Flächen.

__getDepthSum__ ist für interne Zwecke gedacht, kann aber auch für eigene Berechnungen verwendet werden.

## Use
```
use <../Base/Deployment.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getDepthSum(
  spaces, 
  rotations, 
  i=0);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| spaces | \[\[x,y],\[x,y]...] | Flächen (x/y-Listen) der Flächen, deren Tiefen summiert werden sollen. |
| rotations | \[RotateX, RotateX, ...] | Liste der Rotationswerte für die Flächen. Die jeweilige anzuwendende Rotation hat denselben Index wie die Fläche, die Zahl muss gleich der Zahl der angegebenen Flächen sein. Mögliche Einzelwerte sind __Rotate0__, __Rotate90__, Rotate_180__ und __Rotate270__. Durch die Drehung können Breite (width, x) und Tiefe (depth, y) vertauscht berechnet werden. Die Liste kann ganz weggelassen werden, dann gelten für alle Elemente __NoRotation__. Ist die Liste unvollständig, wird für die restlichen Elemente __NoRotation__ angenommen. |
| i | Integer | Startindex der zu addierenden Flächen. Für die rekursiven Aufrufe. |

## Rückgabewert
Summe der Tiefen aller in *spaces* angegebenen Flächen. Dabei werden die in *rotations* angegebenen Drehungen der Flächen eingerechnet.
