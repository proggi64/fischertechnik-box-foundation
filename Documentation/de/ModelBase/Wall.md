# Space

Erzeugt eine Wand.

__Wall__ wird von einigen Elemente verwendet, um Trenn- oder Stützwände zu erzeugen. intern wird lediglich __cube__ aufgerufen, allerdings wird die Höhe in *volume.z* um [__getExcess__](../Base/getExcess.md) erhöht und die Wand um diesen Betrag unter die Null-Y-Koordinate gesenkt. Dadurch entsteht eine saubere Wand am Boden des Sortierkastens ohne unerwünschte Luftspalte.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
Wall(
  volume);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| volume | \[x,y,z] | Breite, Tiefe (Stärke) und Höhe der Wand. Für die Wandstärke (ja nach Richtung x oder y) sollte in fast allen Fällen [__getDividerThickness__](../Base/getDividerThickness.md) angegeben werden. |

## Beispiel

```
use <../../Base/Constants.scad>
use <../../ModelBase/Simple.scad>

Wall([10, getDividerThickness(), 5]);

translate([0, 10])
    Wall([getDividerThickness(), 20, 10]);
```

Im Beispiel wird die vertikale Richtung der Wand durch Vertauschen von x und y erreicht, so dass man keine Drehungstransformation benötigt.

<img width="317" alt="Wall" src="https://user-images.githubusercontent.com/48654609/168912407-040d2270-bc2c-4c5a-b85a-bad86222945d.png">
