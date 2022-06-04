# AxisWithSpace

Erzeugt eine stehende Achse mit einer Grundplatte.

Diese Art Achsen werden verwendet, um z.B. Achsverbinder darauf zu stecken. Der Koordinatenursprung ist die linke untere Ecke der Grundplatte. Diese Grundplatte wird unsichtbar in die Bodenplatte des Sortierkastens versenkt.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
AxisWithSpace(
  height, 
  space,
  diameter=getStandAxisDiameter());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| height | Decimal | Höhe der Achse. Mehr als 30 mm sind nicht zu empfehlen, da die nutzbare Höhe des Sortierkastens nur etwa 40 mm beträgt und solche Achsen mit zunehmender Höhe leichter abbrechen können. |
| space | \[x,y] | Grundplatte, in deren Zentrum die Achse steht. Sie hat die Höhe von [__getExcess__](../Base/getExcess.md) und wird in den Boden des Sortierkastens versenkt. Der Koordinatenurprung des Elements ist die linke untere Ecke von *space*. |
| diameter | Decimal | Durchmesser der Achse. Standardwert ist [__getStandAxisDiameter__](../Base/getStandAxisDiameter.md). |

## Beispiel

```
use <../../ModelBase/Simple.scad>

AxisWithSpace(10, [10, 10]);

translate([15, 0, 0])
    AxisWithSpace(20, [10,20]);

translate([35, 0, 0])
    AxisWithSpace(20, [20,40], 12);
```

<img width="317" alt="AxisWithSpace" src="https://user-images.githubusercontent.com/48654609/169088390-8d723fe0-f493-4baa-99b3-c472d5013bed.png">
