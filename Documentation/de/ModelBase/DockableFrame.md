# DockableFrame

Erzeugt einen Rahmen, der an eine Wand angedockt werden kann.

Der Rahmen besteht aus dem Boden ([__Space__](Space.md)) und bis zu vier Wänden. An den Seiten, die an Wände gedockt werden sollen, werden die Wände entfernt und die übrig gebliebenen Wände werden in die Seitenwände des Sortierkastens verlängert, um mit ihnen zu verschmelzen. Die Koordinaten sind so berechnet, dass beim Platzieren diese Teile automatisch in die Außenwände der Box integriert werden.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
DockableFrame(
  volume, 
  wallLeft=true, 
  wallTop=true, 
  wallRight=true, 
  wallBottom=true,
  tolerance=getTolerance(), 
  wallExcess=getDividerThickness());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| volume | \[x,y,z] | Länge x Breite x Höhe des Inneraums. Auf Länge und Breite wird noch der Wert von *tolerance* für das tatsächliche innere Volumen gerechnet. |
| tolerance | Decimal | Toleranzwert, der zu Länge und Breite gerechnet wird, damit in das gedruckte Element das Bauteil hineinpasst. Standard ist [__getTolerance()__](../Base/getTolerance.md). Wenn der Rahmen exakt den Angaben in *volume* entsprechen soll, muss hier 0 angegeben werden. |
| wallLeft | Boolean | Wenn __false__, dann wird die linke Wand weggelassen, damit der Rahmen an die linke Wand des Sortierkastens gedockt werden kann. |
| wallRight | Boolean | Wenn __false__, dann wird die rechte Wand weggelassen, damit der Rahmen an die rechte Wand des Sortierkastens gedockt werden kann. |
| wallTop | Boolean | Wenn __false__, dann wird die hintere Wand weggelassen, damit der Rahmen an die hintere Wand des Sortierkastens gedockt werden kann. |
| wallBottom | Boolean | Wenn __false__, dann wird die vordere Wand weggelassen, damit der Rahmen an die vordere Wand des Sortierkastens gedockt werden kann. |

## Beispiel

```
use <../../Base/Placement.scad>
use <../../Base/Boxes.scad>

include <../../Base/PlacementOptions.scad>

use <../../ModelBase/Simple.scad>

#Box190();
Place()
    DockableFrame([45,30,15], wallBottom=false, wallLeft=false);

volume = [60,30,10];
Place(elementSpace=getFrameOuterVolume(volume), alignY=AlignTop, alignX=AlignCenter)
    DockableFrame(volume, wallTop=false);
```

<img width="317" alt="DockableFrame" src="https://user-images.githubusercontent.com/48654609/169065985-018a196a-e22b-41a2-a48b-83b6a40abd9f.png">
