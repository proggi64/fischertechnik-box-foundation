# FrameBracket

Erzeugt einen Rahmen für einen Getriebeaufsatz mit oder ohne Schnecke.

Die Getriebeaufsätze für den Standard-6V-Motor können eine einfache kurze Achse oder eine Getriebeschnecke haben. Für die einfache Achse ist der Steg höher, der den Aufsatz stützt.

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

<img width="178" alt="FrameBracket" src="https://user-images.githubusercontent.com/48654609/169099296-e197378b-5bed-494b-89df-3cd6010bd839.png">
