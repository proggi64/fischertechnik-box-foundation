# LeveledAxisWithSpace

Erzeugt eine stehende Achse mit einer stärkeren Achsbasis und einer Grundplatte.

Diese Art Achsen werden verwendet, um z.B. Naben darauf zu stecken. Der Koordinatenursprung ist die linke untere Ecke der Grundplatte. Diese Grundplatte wird unsichtbar in die Bodenplatte des Sortierkastens versenkt.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
LeveledAxisWithSpace(
  height, levelHeight, space, diameter=getAxisDiameter(), baseDiameter=getAxisBottomDiameter());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| height | Decimal | Höhe der Achse. Mehr als 30 mm sind nicht zu empfehlen, da die nutzbare Höhe des Sortierkastens nur etwa 40 mm beträgt und solche Achsen mit zunehmender Höhe leichter abbrechen können. |
| levelHeight | Decimal | Höhe der stärkeren Achsbasis. |
| space | \[x,y] | Grundplatte, in deren Zentrum die Achse steht. Sie hat die Höhe von [__getExcess__](../Base/getExcess.md) und wird in den Boden des Sortierkastens versenkt. Der Koordinatenurprung des Elements ist die linke untere Ecke von *space*. |
| diameter | Decimal | Durchmesser der Achse. Standardwert ist [__getAxisDiameter__](../Base/getAxisDiameter.md). |
| baseDiameter | Decimal | Durchmesser der Achsbasis. Standardwert ist [__getAxisBottomDiameter__](../Base/getAxisBottomDiameter.md). |

## Beispiel

```
use <../../ModelBase/Simple.scad>

LeveledAxisWithSpace(10, 5, [15,15]);

translate([20, 0, 0])
    LeveledAxisWithSpace(20, 5, [10,20]);

translate([40, 0, 0])
    LeveledAxisWithSpace(20, 10, [20,10]);
```

<img width="317" alt="LeveledAxisWithSpace" src="https://user-images.githubusercontent.com/48654609/169087469-e875cadd-a4dd-4c70-a760-39b84603aa75.png">

