# DeployVertical
Verteilt die angegebenen Children-Elemente mit gleichem Abstand auf die angegebene Strecke auf der X-Position Null. Dabei werden auch die Drehungen der einzelnen Elemente angegeben und berücksichtigt. Optional kann eine horizontale Ausrichtung der Elemente relativ zueinander angegeben werden.

## Use
```
use <../Base/Deployment.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
DeployVertical(
  width, 
  spaces, 
  rotations,
  alignX=NoAlign)
  {children}
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| width | Decimal | Strecke, über die die angegebenen Elemente verteilt werden. Wird hier Null angegeben, werden die Elemente direkt ohne Abstand aneinander gesetzt. |
| spaces| \[\[x,y],\[x,y],...] | Liste von Wertpaaren (Liste mit x- und y-Wert) mit den Flächen der Children-Elemente. Hier sollten die jeweiligen __get*ElementName*Space()__-Funktionen angegeben werden, und zwar in der Reihenfolge, die der der Children-Elemente entspricht. |
| rotations | \[RotateX, RotateX, ...] |Gibt für jedes Children-Element an, wie es vor dem Vertielne gedreht werden soll. Mögliche Werte sind __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. Die Reihenfolge entspricht der der Children-Elemente. Die Liste kann ganz weggelassen werden, dann gelten für alle Elemente __NoRotation__. Ist die Liste unvollständig, wird für die restlichen Elemente __NoRotation__ angenommen. |
| alignX | Integer (Enum) | Horizontale Ausrichtung der Children-Elemente zueinander. Grundlage sind die in *spaces* angegebenen Flächen, sowie die in *rotations* angegebenen Drehungen der einzelnen Elemente. __AlignLeft__ richtet auf der linken Linie aus (wie __NoAlign__), __AlignRight__ am höchsten X-Wert der Elemente, __AlignCenter__ zentriert alle Elemente um das Zentrum des breitesten Elements. |

## Beispiele

## Ohne Ausrichtung
Das Beispiel ist ein Ausschnitt aus der Testdatei *Test/Base/DeploymentTestDeployVertical.scad*:

```
use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();
translate([0, 60])
    PlacementBase();

DeployVertical(
    getPlacementBaseSpace().y*2, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [Rotate0, Rotate90, Rotate180]) {
    Cube();
    Cube();
    Cube();
}
```

Das Beispiel verteilt drei gelbe Elemente __Cube__ auf den grünen __PlacementBase__-Flächen (hier zwei übereinander), die hier zur Veranschaulichung unter die Elemente gelegt wird. Die Rotationen zeigen, dass die richtige Höhe nach der jeweiligen Rotation berücksichtigt wird. Die Abstände sind identisch.

<img width="355" alt="DeployVertical_1" src="https://user-images.githubusercontent.com/48654609/168467555-2a7ccd27-dc2c-4b1e-8259-e709bb630922.png">

## Zentriert ausgerichtet

```
use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();
translate([0, 60])
    PlacementBase();

DeployVertical(
    getPlacementBaseSpace().y*2, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [Rotate0, Rotate90, Rotate180],
    alignX=AlignCenter) {
    Cube();
    Cube();
    Cube();
}
```

Wie das vorige Beispiel, aber der optionale Parameter *alignX* wird auf __AlignCenter__ gesetzt.

<img width="355" alt="DeployVertical_2" src="https://user-images.githubusercontent.com/48654609/168467597-172d0b64-d9ca-4851-8df3-c1058f34661b.png">

## Ohne Abstand mit Ausrichtung rechts

```
use <../../Base/Deployment.scad>
use <../../Base/Placement.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

PlacementBase();
translate([0, 60])
    PlacementBase();

DeployVertical(
    0, 
    [getCubeSpace(), getCubeSpace(), getCubeSpace()],
    [Rotate0, Rotate90, Rotate180],
    alignX=AlignRight) {
    Cube();
    Cube();
    Cube();
}
```

Die Elemente werden direkt aneinander platziert.

<img width="355" alt="DeployVertical_3" src="https://user-images.githubusercontent.com/48654609/168467660-d6692209-38fc-4727-a96b-7560928f9945.png">
