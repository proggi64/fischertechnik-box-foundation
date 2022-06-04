# Axis

Erzeugt eine stehende Achse.

Diese Art Achsen werden verwendet, um z.B. Achsverbinder darauf zu stecken. Der Koordinatenursprung von stehenden Achsen ist das Zentrum der Achse. Die angegebene Höhe wird um [__getExcess__](../Base/getExcess.md) erhöht und die Achse wird um diesen Betrag in den Boden gesenkt, um ungewollte Luftspalte zu verhindern.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
Axis(
  height, 
  diameter=getStandAxisDiameter());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| height | Decimal | Höhe der Achse. Mehr als 30 mm sind nicht zu empfehlen, da die nutzbare Höhe des Sortierkastens nur etwa 40 mm beträgt und solche Achsen mit zunehmender Höhe leichter abbrechen können. |
| diameter | Decimal | Durchmesser der Achse. Standardwert ist [__getStandAxisDiameter__](../Base/getStandAxisDiameter.md). |

## Beispiel

```
use <../../ModelBase/Simple.scad>

Axis(10);

translate([15, 0, 0])
    Axis(20);

translate([25, 0, 0])
    Axis(20, diameter=10);
```

<img width="317" alt="Axis" src="https://user-images.githubusercontent.com/48654609/169070124-62a69ffb-eb09-46f8-bb93-c228c5e1b355.png">
