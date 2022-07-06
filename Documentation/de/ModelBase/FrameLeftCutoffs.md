# FrameLeftCutoffs

Erzeugt mehrere Kubus, die mit __difference__ Ausschnitte mit gleichmäßigem Abstand in der linken Wand eines mit [__Frame__](Frame.md) erzeugten Rahmens schneidet.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
FrameLeftCutoffs(
  volume, 
  count, 
  cutoffWidth);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| volume | \[x,y,z] | Länge x Breite x Höhe des Inneraums. Auf Länge und Breite wird noch der Wert von *tolerance* für das tatsächliche innere Volumen gerechnet. |
| count | Integer | Zahl der Ausschnitte. |
| cutoffWidth | Decimal | Breite jedes Ausschnitts. |

## Beispiel
```
use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

width = 15;
count = 3;
cutoffWidth = 4;
tolerance = 1;

difference() {
    volume = [10, width * count, 10];
    Frame(volume, tolerance);
    FrameLeftCutoffs(volume, count, cutoffWidth, tolerance);
}
```

![FrameLeftCutoffs_4](../../images/FrameLeftCutoffs_1.png)