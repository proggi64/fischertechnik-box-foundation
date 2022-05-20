# BoxBase

Erzeugt einen stapelbaren, zu Fischertechnik Sortierkästen kompatible Kasten.

__BoxBase__ können die Breite und Tiefe der Box als Parameter mitgegeben werden. Die Module [__Box190__](Box190.md) und [__Box130__](Box130.md) erzeugen bereits zum Sortierkasten 1000 passende Kästen und verwenden dieses Modul.

## Use
```
use <../Base/Boxes.scad>
```

## Syntax
```
BoxBase(
  width,
  depth,
  height=40);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| width | Decimal | Breite der Box am oberen Rand. Die Boxen werden konisch nach unten etwas enger und die Wände nehmen auch etwas Plart ein, so dass der innere Platz am Boden um einige Millimeter schmaler ist. *width* sollte den Maßen der Originalboxen berücksichtigen. Ein Sortierkasten für die Box 1000 ist am oberen Rand exakt 190 x 130 mm groß. |
| depth | Decimal | Tiefe der Box am oberen Rand. Siehe dazu Anmerkungen zu *width*. |
| height| Decimal | Alle Sortierkästen von Fischertechnik sind 40 mm hoch (hier Standardwert). Denkbar sind aber auch spezielle Lösungen mit höherer und niedrigerer Box übereinander gestapelt, die wieder zusammen die Box-1000-Normhöhe ergeben. So bekommt man Teil unter, die höher als die ca. 35 mm sind, die in die Boxen noch passen. |

## Beispiele
Siehe *Test/Base/BoxesTestBoxBase.scad*

```
use <../../Base/Constants.scad>
use <../../Base/Boxes.scad>

BoxBase(190, 130);
    translate([5,-5,0])
        #cube([15, 15, getBoxUsageHeight()]);
    translate([25,-5,0])
        #cube([15, 15, getBoxInnerHeight()]);
    translate([45,-5, -15])
        #cube([15, 15, 15]);
    translate([-getBoxWallThickness()-1.5/2, 60, 35])
        #cube([190, 15, 15]);
    translate([60, -getBoxWallThickness()-1.5/2, 35])
        #cube([15, 130, 15]);

translate([200, 0]) {
BoxBase(130, 95);
    translate([5,-5,0])
        #cube([15, 15, getBoxUsageHeight()]);
    translate([25,-5,0])
        #cube([15, 15, getBoxInnerHeight()]);
    translate([45,-5, -15])
        #cube([15, 15, 15]);
    translate([-getBoxWallThickness()-1.5/2, 35, 35])
        #cube([130, 15, 15]);
    translate([35, -getBoxWallThickness()-1.5/2, 35])
        #cube([15, 95, 15]);
}

translate([340, 0]) {
BoxBase(130, 95, 55);
}

translate([480, 0]) {
BoxBase(130, 95, 25);
}
```

<img width="273" alt="BoxBase" src="https://user-images.githubusercontent.com/48654609/169524955-e52353c2-5317-4998-82a4-dbf38ca9136f.png">
