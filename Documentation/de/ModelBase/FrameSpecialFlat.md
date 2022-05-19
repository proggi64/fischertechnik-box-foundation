# FrameSpecialFlat

Erzeugt einen Rahmen für spezielle Flachbausteine.

Diese Art Rahmen wurde in den ec-Kästen vor allem für Linsen und Lochblenden eingesetzt. Der Baustein liegt flach in Rahmen auf erhöhten Auflagen. Der Rahmen hat seitliche Eingriffe.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
FrameSpecialFlat(
  volume);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| volume | \[x,y,z] | Länge x Breite x Höhe des speziellen Flachbausteins. Auf Länge und Breite wird noch der Wert von *tolerance* für das tatsächliche innere Volumen gerechnet. Die Höhe darf 15 mm nicht überschreiten, da der Rahmen nur so hoch ist. |

## Beispiel
```
use <../../ModelBase/Complex.scad>

FrameSpecialFlat([30, 37, 4]);

translate([40, 0])
FrameSpecialFlat([30, 34, 9]);
```
