# getDockableEdgedFrameDepth

Funktion: Liefert den zusätzlichen Abstand eines oben oder unten angedockten Rahmens, wenn dieser über __DockableEdgedFrame__ erzeugt wird. Der Abstand wird zur Wand eingehalten und zusätzlich werden zwei Stege eingefügt, die mit der Außenwand verschmelzen.

<img width="344" alt="ComplexTestDockableEdgedFrame" src="https://user-images.githubusercontent.com/48654609/168326465-092ff8fa-9027-4002-a818-d70652e15877.png">

## Use
```
use <../ModelBase/Complex.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getDockableEdgedFrameDepth(
  edgeDistance, 
  alignY=NoAlign);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| edgeDistance | Decimal < Zusätzliche Distanz des Rahmens zur Wand, falls an die linke oder rechte Wand angedockt werden soll. |
| alignY | integer (Enum) | __NoAlign__, falls nicht angedockt werden soll. Dann wird 0 zurückgeliefert. Sonst __AlignBottom__ oder __AlignTop__. |

## Rückgabewert
Zusätzliche Distanz des Rahmens zur Wand, an die gedckt wird. Der Wert ist 0, wenn für *alignX* __NoAlign__ übergeben wird.
