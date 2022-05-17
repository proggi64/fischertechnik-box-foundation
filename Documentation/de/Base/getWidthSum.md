# getWidthSum

Funktion: Liefert die Summe der Breiten alle angegebenen Flächen und berücksichtigt die angegebenen Drehungen dieser Flächen.

__getWidthSum__ ist für interne Zwecke gedacht, kann aber auch für eigene Berechnungen verwendet werden.

## Use
```
use <../Base/Deployment.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getWidthSum(
  spaces, 
  rotations, 
  i=0);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| spaces | \[\[x,y],\[x,y]...] | Flächen (x/y-Listen) der Flächen, deren Breiten summiert werden sollen. In *count* muss die Zahl der Elemente angegeben werden. |
| rotations | \[RotateX, RotateX, ...] | Liste der Rotationswerte für die Flächen. Die jeweilige anzuwendende Rotation hat denselben Index wie die Fläche, die Zahl muss gleich der Zahl der angegebenen Flächen sein. Mögliche Einzelwerte sind __Rotate0__, __Rotate90__, Rotate_180__ und __Rotate270__. Durch die Drehung können Breite (width, x) und Tiefe (depth, y) vertauscht berechnet werden. |
| i | Integer | Startindex der zu addierenden Flächen. Für die rekursiven Aufrufe. |

## Rückgabewert
Summe der Breiten aller in *spaces* angegebenen Flächen. Dabei werden die in *rotations* angegebenen Drehungen der Flächen eingerechnet.
