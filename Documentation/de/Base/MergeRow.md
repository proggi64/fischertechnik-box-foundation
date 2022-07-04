# MergeRow

Fügt die Children horizontal so zusammen, dass ihre Außenwände miteinander verschmelzen.

## Use
```
use <../Base/Deployment.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
MergeRow(
  spaces, 
  rotations=[NoRotation], 
  dividerThickness = getDividerThickness())
  {children}
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| spaces| \[\[x,y],\[x,y],...] | Liste von Wertpaaren (Liste mit x- und y-Wert) mit den Flächen der Children-Elemente. Hier sollten die jeweiligen __get*ElementName*Space()__-Funktionen angegeben werden, und zwar in der Reihenfolge, die der der Children-Elemente entspricht. |
| rotations | \[RotateX, RotateX, ...] | Gibt für jedes Children-Element an, wie es vor dem Verteilen gedreht werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. Die Reihenfolge entspricht der der Children-Elemente. Die Liste kann ganz weggelassen werden, dann gelten für alle Elemente __NoRotation__. Ist die Liste unvollständig, wird für die restlichen Elemente __NoRotation__ angenommen. |
| dividerThickness | Decimal | Wandstärke der Elemente. Standardwert ist die Standardwandstärke von __getDividerThickness()__. |

## Beispiel
```
use <../../Base/Deployment.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

space = [30, 15, 5];
volume = getFrameOuterVolume(space);

MergeRow(
    [volume, volume, volume],
    [NoRotation, Rotate90, NoRotation]) {
    Frame(space);
    Frame(space);
    Frame(space);
}
```

Das Beispiel fügt drei [__Frame__](../ModelBase/Frame.md)-Elemente zusammen. Die Wandstärke zwischen den Elementen entspricht der Standardwandstärke.

<img width="355" alt="MergeRow" src="https://user-images.githubusercontent.com/48654609/168481994-c997db5d-bfdd-4edc-90c5-424990725693.png">
