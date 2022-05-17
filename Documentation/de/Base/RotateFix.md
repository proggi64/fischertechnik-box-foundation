# RotateFix

Rotiert das Children-Element um 0, 90, 180 oder 270 Grad im Uhrzeigersinn. Dabei verbleibt der Ursprung des Elements immer links unten, so dass sich dessen Position auf der Fläche nicht ändert.

## Use
```
use <../Base/Rotation.scad>
include <PlacementOptions.scad>
```

## Syntax
```RotateFix(
  space,
  rotation=Rotate0))
  {children}
```

| Parameter | Typ | Beschreibung |
| ------ | ------ |  ------ |
| space | \[x,y] | Fläche des Elements, das rotiert werden soll. Dies kann z.B. durch __get*ElementName*Space()__ angegeben werden. |
| rotation | Integer (Enum) | Gibt an, wie das Element rotiert werden soll. Mögliche Werte sind die in *PlacementOptions.scad* definierten Konstanten __Rotate0__, __Rotate90__, __Rotate180__ und __Rotate270__. |

## Beispiel

```
use <../../Base/Rotation.scad>

include <../../Base/PlacementOptions.scad>

use <../TestHelper.scad>

Deploy(30) {
    RotateFix(getCubeSpace(), Rotate0)
        Cube();
    RotateFix(getCubeSpace(), Rotate90)
        Cube();
    RotateFix(getCubeSpace(), Rotate180)
        Cube();
    RotateFix(getCubeSpace(), Rotate270)
        Cube();
}
```

Die vier __Cube__-Elemente werden im Abstand von jeweils 30 mm horizontal verteilt. Jedes wird dabei um 90° mehr gedreht, als der linke Nachbar. Der Ursprung des Elements bleibt aber trotz Drehung immer links unten.

<img width="355" alt="RotateFix_1" src="https://user-images.githubusercontent.com/48654609/168498294-3b13c679-3337-45df-a335-8683e4c130b8.png">
