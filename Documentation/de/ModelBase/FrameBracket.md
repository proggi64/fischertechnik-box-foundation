# FrameBracket

Erzeugt einen Rahmen für ein Getriebeaufsatz mit oder ohne Schnecke.

Die Getriebeaufsätze für den Standard-6V-Motor können eine einfache kruze Achse oder eine Getriebeschnecke haben. Für die einfache Achse ist der Steg höher, der den Aufsatz stützt.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax

```
FrameBracket(
    webVolume);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| webVolume | \[x,y,z] | Größe des Stütz-Stegs. Die Ausrichtung des Rahmens so, dass x die Länge, y die Stärke des Stegs sein muss. |

## Beispiel
```
use <../../Base/Constants.scad>
use <../../ModelBase/Complex.scad>

FrameBracket([15, getDividerThickness(), 5]);

translate([70,0])
    FrameBracket([15, getDividerThickness(), 10]);
```

