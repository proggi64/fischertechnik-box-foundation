# FrameRightCutoff

Erzeugt einen Kubus, der mit __difference__ einen Ausschnitt in der rechten Wand eines mit [__Frame__](Frame.md) erzeugten Rahmens schneidet.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
FrameRightCutoff(
  volume,
  width,
  offset=0,
  tolerance=getTolerance());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| volume | \[x,y,z] | Länge x Breite x Höhe des Inneraums. Auf Länge und Breite wird noch der Wert von *tolerance* für das tatsächliche innere Volumen gerechnet. |
| width | Decimal | Breite des Ausschnitts. |
| offset | Decimal | Y-Offset des Ausschnitts. Positive Werte verschieben nach hinten, negative nach vorne. |
| tolerance | Decimal | Toleranzwert, der zu Länge und Breite gerechnet wird, damit in das gedruckte Element das Bauteil hineinpasst. Standard ist [__getTolerance()__](../Base/getTolerance.md). Wenn der Rahmen exakt den Angaben in *volume* entsprechen soll, muss hier 0 angegeben werden. |

## Beispiel

```
cutoffWidth = 5;
offset = 0;

difference() {
    Frame([10,10,10]);
    FrameRightCutoff([10,10,10], cutoffWidth, offset);
}
```

![Ohne offset](../../images/SimpleTestFrameRightCutoff_1.png)