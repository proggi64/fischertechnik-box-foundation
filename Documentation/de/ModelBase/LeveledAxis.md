# LeveledAxis

Erzeugt eine stehende Achse mit einer stärkeren Achsbasis.

Diese Art Achsen werden verwendet, um z.B. Naben darauf zu stecken. Der Koordinatenursprung von stehenden Achsen ist das Zentrum der Achse. Die angegebene Höhe wird um [__getExcess__](../Base/getExcess.md) erhöht und die Achse wird um diesen Betrag in den Boden gesenkt, um ungewollte Luftspalte zu verhindern.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
LeveledAxis(
  height, 
  levelHeight, 
  diameter=getStandAxisDiameter(),
  baseDiameter=getAxisBottomDiameter());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| height | Decimal | Höhe der Achse. Mehr als 30 mm sind nicht zu empfehlen, da die nutzbare Höhe des Sortierkastens nur etwa 40 mm beträgt und solche Achsen mit zunehmender Höhe leichter abbrechen können. |
| levelHeight | Decimal | Höhe der stärkeren Achsbasis. |
| diameter | Decimal | Durchmesser der Achse. Standardwert ist [__getStandAxisDiameter__](../Base/getStandAxisDiameter.md). |
| baseDiameter | Decimal | Durchmesser der Achsbasis. Standardwert ist [__getAxisBottomDiameter__](../Base/getAxisBottomDiameter.md). |

## Beispiel

```
use <../../ModelBase/Simple.scad>

LeveledAxis(10, 5);

translate([10, 0, 0])
    LeveledAxis(20, 5);

translate([20, 0, 0])
    LeveledAxis(20, 10);
```

<img width="317" alt="LeveledAxis" src="https://user-images.githubusercontent.com/48654609/169085082-457c6537-bfd2-421a-a931-d031b964d9de.png">

