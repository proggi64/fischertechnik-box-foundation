# BoxWeb

Erzeugt einen kurzen Steg an der Innenwand einer Sortierbox. Ein solcher Steg ist immer vollständig mit der Außenwand verschmolzen, so dass kein Spalt entsteht.

Solche Stege befinden sich an verschiedenen Positionen der Original-Sortierboxen und verhindern, dass die gestapelten Boxen zu tief in die untere Box versinken. Viele der Stege sind auch Teil einer Trennwand, die meistens abgestuft niedriger als der Steg selbst verläuft. Dazu muss lediglich das Modul [__Wall__](../ModelBase/Wall.md) (aus *ModelBase/Simple.scad*) mit den Stegen kombiniert werden.

## Use
```
use <../Base/Boxes.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
BoxWeb(
  corner, 
  side, 
  distance, 
  boxSpace=getBox190Space(), 
  webWidth=getBoxWebWidth(), 
  webThickness=1.0,
  height=getBoxUsageHeight(),
  sink=getBoxWallThickness()/2);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| corner | Integer (Enum) | Ecke, in welcher der Steg platziert werden soll. Die numerischen Werte sind als Konstanten in *PlacementOptions.scad* definiert: __LowerLeft__, __UpperLeft__, __UpperRight__ oder __LowerRight__. |
| side | Integer (Enum) | Seite der Ecke (*corner*) von außen betrachtet, wo der Steg platziert werden soll. Die numerischen Werte sind als Konstanten in *PlacementOptions.scad* definiert: __LeftOfCorner__ oder __RightOfCorner__. Von oben auf die Sortierbox gesehen, ist __LeftOfCorner__ immer im Uhrzeigersinn neben der Ecke. |
| distance | Decimal | Abstand des Stegs von der Ecke. Es wird immer der Abstand des zur Ecke gewandten Rands des Stegs zum Rand der Wand gerechnet, also der tatsächlich freie Bereich. |
| boxSpace | \[x,y\] | Fläche, auf der die Stege platziert werden. Standard ist der nutzbare Raum der Box 190 x 130. Für die Box 130 x 95 kann __getBox130Space()__ angegeben werden. Es können beliebige andere Flächen angegeben werden, z.B. um Stege in selbstdefinierten Rahmen ([__Frame__](../ModelBase/Frame.md)) oder an Trennwänden zu generieren. |
| webWidth | Decimal | Länge der Oberseite des Stegs. So weit ragt der Steg von der Wand in den Innenraum der Box. Der Standardwert ist in *Constants.scad* als Funktion [__getBoxWebWidth()__](../ModelBase/getBoxWebWidth.md) definiert. |
| webThickness | Decimal | Stärke des Stegs. Dies entspricht im Standard nicht der normalen Wandstärke der Rahmen und Trenner, sondern ist etwas dünner. Bei mit Trennern verschmolzenen Stegen sollte hier [__getDividerThickness()__](../Base/getDividerThickness.md) als Wert übergeben werden (aus *Constants.scad*). |
| height | Decimal | Höhe des Stegs. Für manche in eine Wand integrierte Elemente ist eine variable Höhe notwendig, für Kästen mit vom Standard [__getBoxUsageHeight()__](getBoxUsageHeight.md) abweichender Höhe ebenfalls. |
| sink | Decimal | Um diesen Betrag versinkt der Steg in der Seitenwand. Für die Nutzung als Inlay muss der Wert -0,4 mm sein, damit der Steg mit dem Rand des Inlays abschließt. Falls der Steg auf der Höhe des Steges der Sortierbox der Kästen 1000 liegt, muss man -1,8 mm angeben, damit der Steg nicht im Weg ist und das Inlay in den Kasten passt. |

## Beispiele
Siehe *Test/Base/BoxesTestBoxWeb.scad*

### Linke untere Ecke
```
use <../../Base/Boxes.scad>
include <../../Base/PlacementOptions.scad>

#Box190();

BoxWeb(LowerLeft, LeftOfCorner, 7.5);
```

<img width="435" alt="BoxesTestBoxWeb01" src="https://user-images.githubusercontent.com/48654609/166932487-8b8f3b92-9774-442c-9c05-6fb0642ec34e.png">

### Rechte obere Ecke
```
use <../../Base/Boxes.scad>
include <../../Base/PlacementOptions.scad>

#Box190();

BoxWeb(UpperRight, RightOfCorner, 15);
```

<img width="435" alt="BoxesTestBoxWeb02" src="https://user-images.githubusercontent.com/48654609/166933860-3688e296-0f26-47b1-b465-35a509529417.png">
