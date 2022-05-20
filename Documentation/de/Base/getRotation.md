# getRotation

Liefert die Rotation aus der Liste *rotations* mit dem Index *i*.

Falls *rotations* nicht definiert ist oder die Rotation mit dem Index *i* nicht definiert ist, wird __NoRotaion__ zurückgegeben. Die Funktion wird intern verwendet, um das Weglassen der Rotationslisten bei den Platzierungsfunktionen zu ermöglichen. Standard ist "keine Drehung".

Falls *rotations* definiert ist, aber die Liste weniger als *i*-1 Elemente enthält, wird ebenfalls __NoRotation__ zurückgegeben. Dadurch können auch unvollständige listen angegeben werden, die weniger Rotationswerte enthalten als *spaces* bzw. Children-Elemente vorhanden sind.

## Use
```
use <../Base/Helper.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getRotations(
  rotations,
  i);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| rotations | \[RotateX, RotateX, ...] | Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__.  Die Liste kann ganz weggelassen werden, dann gelten für alle Elemente __NoRotation__. Ist die Liste unvollständig, wird für die restlichen Elemente __NoRotation__ angenommen.. |
| i | Integer | Index des Rotationswertes, der aus *rotations* geliefert werden soll. Ist der Index höher als der höchste vorhandene, dann wird __NoRotation__ geliefert. |

## Rückgabewert
Einer Rotationswerte __NoRotation__, __Rotate90__, __Rotate180__ oder __Rotate270__.
