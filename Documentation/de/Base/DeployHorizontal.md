# DeployHorizontal
Verteilt die angegebenen Children-Elemente mit gleichem Abstand auf die angegebene Strecke auf der Y-Position Null. Dabei werden auch die Drehungen der einzelnen Elemente angegeben und berücksichtigt. Optional kann eine vertikale Ausrichtung der Elemente relativ zueinander angegeben werden.

## Use
```
use <../Base/Deployment.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
DeployHorizontal(
  width, 
  spaces, 
  rotations,
  alignY=NoAlign)
  {children}
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| width | Decimal | Strecke, über die die angegebenen Elemente verteilt werden. Wird hier Null angegeben, werden die Elemente direkt ohne Abstand aneinander gesetzt. |
| spaces| \[\[x,y],\[x,y],...] | Liste von Wertpaaren (Liste mit x- und y-Wert) mit den Flächen der Children-Elemente. Hier sollten die jeweiligen __get*ElementName*Space()__-Funktionen angegeben werden, und zwar in der Reihenfolge, die der der Children-Elemente entspricht. |
| rotations | \[RotateX, RotyteX, ...] | Gibt für jedes Children-Element an, wie es vor dem Verteilen gedreht werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. Die Reihenfolge entspricht der der Children-Elemente. Die Liste kann ganz weggelassen werden, dann gelten für alle Elemente __NoRotation__. ist die Liste unvollständig, wird für die restlichen Elemente __NoRotation__ angenommen. |
| alignY | Integer (Enum) | Vertikale Ausrichtung der Children-Elemente zueinander. Grundlage sind die in *spaces* angegebenen Flächen, sowie die in *rotations* angegebenen Drehungen der einzelnen Elemente. __AlignBottom__ richtet auf der unteren Linie aus (wie __NoAlign__), __AlignTop__ am höchsten Y-Wert der Elemente, __AlignCenter__ zentriert alle Elemente um das Zentrum des tiefsten Elements. |

## Beispiele

## Ohne Ausrichtung
Das Beispiel ist ein Ausschnitt aus der Testdatei *Test/Base/DeploymentTestDeployHorizontal.scad*:

```
use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeployHorizontal(
    getPlacementBaseSpace().x, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [NoRotation, Rotate90, Rotate180]) {
    Cube();
    Cube();
    Cube();
}<
```

Das Beispiel verteilt drei gelbe Elemente __Cube__ auf der grünen __PlacementBase__, die hier zur Veranschaulichung unter die Elemente gelegt wird. Die Rotationen zeigen, dass die richtige Breite nach der jeweiligen Rotation berücksichtigt wird. Die Abstände sind identisch.

<img width="355" alt="DeployHorizontalSample" src="https://user-images.githubusercontent.com/48654609/168444058-dd0ef1e6-d41f-4f6c-bf0b-4c4fa788a45e.png">

## Zentriert ausgerichtet

```
use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeployHorizontal(
    getPlacementBaseSpace().x, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [NoRotation, Rotate90, Rotate180],
    alignY=AlignCenter) {
    Cube();
    Cube();
    Cube();
}
```

Wie das vorige Beispiel, aber der optionale Parameter *alignY* wird auf __AlignCenter__ gesetzt.

<img width="355" alt="DeployHorizontal_Center" src="https://user-images.githubusercontent.com/48654609/168445149-ada86163-d7df-4982-b52b-884f67ce5b55.png">

## Ohne Abstand mit Ausrichtung oben

```
use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeployHorizontal(
    0, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [NoRotation, Rotate90, Rotate180],
    alignY=AlignTop) {
    Cube();
    Cube();
    Cube();
}
```

Die Elemente werden direkt aneinander platziert. Bei __Frame__-Elementen werden die Zwischenwände doppelt so dick wie eine einzelne Wand. Um in solchen Fällen die  Zwischenwände auf die Einzelstärke zu reduzieren, muss stattdessen [__MergeRow__}(MergeRow.md) verwendet werden.

<img width="355" alt="DeployHorizontal_Zero" src="https://user-images.githubusercontent.com/48654609/168445294-81a83274-f977-46a3-b1d0-7d9dd05166fb.png">

## Rotationsliste weglassen

```
use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();

DeployHorizontal(
    getPlacementBaseSpace().x, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    alignY=AlignTop) {
    Cube();
    Cube();
    Cube();
}
```

<img width="270" alt="DeployHorizontal_DefRot" src="https://user-images.githubusercontent.com/48654609/169541360-f0e25758-f8f5-4a79-aa82-2c8aa6f4901f.png">
