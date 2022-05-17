# DockedFrame

Erzeugt einen Trenner innerhalb eines Sortierkastens. Der Trenner reicht immer von Wand zu Wand. Die Ausrichtung und die Position wird über die Parameter *align* und *distance* angegeben.

<img width="355" alt="DockedFrame" src="https://user-images.githubusercontent.com/48654609/168426262-f0c31eef-9e01-4177-afa6-805659665699.png">

Die Trennwand verschmilzt mit den beiden Außenwänden.

## Use
```
use <../ModelBase/Simple.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
DockedFrame(
  distance, 
  align=AlignLeft, 
  height=getSmallPartsFrameHeight(), 
  boxSpace=getBox190Space());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| distance | Decimal | Innerer Abstand zwischen Außenwand und Trennwand, gerechnet von der durch *align* festgelegten Wand. |
| align | Integer (Enum) |  Legt die Ausrichtung fest und von welcher Wand aus *distance* gerechnet wird. Mögliche Werte: __AlignLeft__, __AlignRight__, __AlignBottom__ oder __AlignTop__. | height | Höhe der Trennwand. Standard ist 10 mm (__getSmallPartsFrameHeight()__). |
| boxSpace | \[x,y] | Fläche des Sortierkastens, in dem der Trenner gesetzt werden soll. Standard ist die Box 190x130. |
