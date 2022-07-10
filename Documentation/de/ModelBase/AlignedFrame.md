# AlignedFrame

Erzeugt einen Rahmen, der an bis zu zwei Wände angedockt werden kann.

Der Rahmen besteht aus dem Boden ([__Space__](Space.md)) und bis zu vier Wänden. An den Seiten, die an Wände gedockt werden sollen, werden die Wände entfernt und die übrig gebliebenen Wände werden in die Seitenwände des Sortierkastens verlängert, um mit ihnen zu verschmelzen. Die Koordinaten sind so berechnet, dass beim Platzieren diese Teile automatisch in die Außenwände der Box integriert werden.

Über die *alignX* und *alignY*-Parameter können (im Gegensatz zu [__DockableFrame__](DockabeFrame.md)) nur bis zu zwei Wände angegeben werden, d.h. dieser Rahmen kann nur an einer Wand oder in einer Ecke angedockt werden. intern wird lediglich [__DockableFrame__](DockabeFrame.md) aufgerufen und die alignment-Parameter werden übersetzt.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
AlignedFrame(
    volume, 
    alignX=NoAlign,
    alignY=NoAlign,
    tolerance=getTolerance(),
    wallExcess=getDividerThickness());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| volume | \[x,y,z] | Länge x Breite x Höhe des Inneraums. Auf Länge und Breite wird noch der Wert von *tolerance* für das tatsächliche innere Volumen gerechnet. |
| alignX | Integer (Enum) | Gibt an, ob an die linke (__AlignLeft__), rechte (__AlignRight__) oder keine (__NoAlign__) der beiden Wände angedockt werden soll. |
| alignY | Integer (Enum) | Gibt an, ob an die untere (__AlignBottom__), obere (__AlignTop__) oder keine (__NoAlign__) der beiden Wände angedockt werden soll. |
| tolerance | Decimal | Toleranzwert, der zu Länge und Breite gerechnet wird, damit in das gedruckte Element das Bauteil hineinpasst. Standard ist [__getTolerance()__](../Base/getTolerance.md). Wenn der Rahmen exakt den Angaben in *volume* entsprechen soll, muss hier 0 angegeben werden. |
| wallExcess | Decimal | Betrag, um den die Wände des Rahmens in die Seitenwand versenkt werden. Standard ist [__getDividerThickness()__](getDividerThickness.md). |

## Beispiel

```
use <../../Base/Placement.scad>
use <../../Base/Boxes.scad>

include <../../Base/PlacementOptions.scad>

use <../../ModelBase/Simple.scad>

#Box190();
Place()
    AlignedFrame([45,30,15], alignY=AlighBottom, alignX=AlignLeft);

volume = [60,30,10];
Place(elementSpace=getFrameOuterVolume(volume), alignY=AlignTop, alignX=AlignCenter)
    AlignedFrame(volume, alignY=AlignTop);
```

<img width="317" alt="DockableFrame" src="https://user-images.githubusercontent.com/48654609/169065985-018a196a-e22b-41a2-a48b-83b6a40abd9f.png">
