# LeveledTube

Erzeugt eine stehenden hohlen Zylinder mit einer stärkeren Basis.

Die Zylinderwand wird um den Betrag von [__getExcess__](../Base/getexcess.md) in den Boden des Sortierkastens versenkt.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
LeveledTube(
  height, 
  diameter, 
  levelHeight,
  levelDiameter);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| height | Decimal | Höhe des Zylinders. |
| diameter | Decimal | Äußerer Durchmesser oben. Bei dieser Art Element ist der äußere Durchmesser entscheidend, weil die Bauelemente über den Zylinder gesteckt werden und auf der Basis liegen. |
| levelHeight | Decimal | Höhe der Basis mit den größeren Durhmesser. Falls 0, wird ein Zylinder ohne stärkere Basis erzeugt. |
| levelDiameter | Decimal | Durchmesser der Basis. Der Wert muss größer sein als *diameter*. |

## Beispiel

```
use <../../ModelBase/Simple.scad>

LeveledTube(height=10, diameter=15, levelHeight=5, levelDiameter=17);
```

Zur Verdeutlichung werden im Beispiel die Parameter mit ihren Namen gesetzt.

<img width="317" alt="LeveledTube" src="https://user-images.githubusercontent.com/48654609/168915941-cb037b66-8b2a-4453-bccb-7867d50fea02.png">
