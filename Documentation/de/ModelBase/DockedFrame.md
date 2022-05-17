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

## Beispiele

## Trennwand relativ zur linken Wand
```
use <../ModelBase/Simple.scad>
include <../Base/PlacementOptions.scad>

#Box190();
Divider(15);
```
Setzt eine Trennwand in 15 mm Entfernung von der linken Wand.

<img width="362" alt="Divider_1" src="https://user-images.githubusercontent.com/48654609/168860973-3d8bd9b7-9dcc-4a60-af49-965992b73a2b.png">

## Trennwand relativ zur oberen Wand
```
use <../ModelBase/Simple.scad>
include <../Base/PlacementOptions.scad>

#Box190();
Divider(15, alignTop);
```
Setzt eine Trennwand in 15 mm Entfernung von der oberen Wand.

<img width="362" alt="Divider_2" src="https://user-images.githubusercontent.com/48654609/168861490-8023603e-8155-4932-95c4-39dd8d2ade5b.png">

