# Tube

Erzeugt eine stehenden hohlen Zylinder.

Die Zylinderwand wird um den Betrag von [__getExcess__](../Base/getexcess.md) in den Boden des Sortierkastens versenkt.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
Tube(
  height, 
  innerDiameter=0, 
  outerDiameter=0);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| height | Decimal | Höhe des Zylinders. |
| innerDiameter | Decimal | Innerer Durchmesser. Falls dieser Wert 0 ist, wird *outerDiameter* minus [__getTubeWallThickness__](../Base/getTubeWallThickness.md) verwendet. In diesem Fall muss *outerDiameter* einen Wert größer Null haben. |
| outerDiameter | Decimal | Äußerer Durchmesser. Falls dieser Wert 0 ist, wird *innerDiameter* plus [__getTubeWallThickness__](../Base/getTubeWallThickness.md) verwendet. In diesem Fall muss *outerDiameter* einen Wert größer Null haben. |

## Beispiel

```
use <../../ModelBase/Simple.scad>

Tube(10, innerDiameter=20);
color("lightblue")
Tube(10, outerDiameter=20);

translate([30, 0])
    Tube(20, innerDiameter=10);

translate([50, 0])
    Tube(20, outerDiameter=10, innerDiameter=5);
```

Der erste Zylinder verdeutlicht die Parameter *innerDiameter* und *outerDiameter*, indem zwei Zylinder mit demselben Wert ineinander erzeugt werden.

Der dritte Zylinder zeigt, wie man durch Angabe beider Parameter die Wandstärke bestimmen kann.

<img width="317" alt="Tube" src="https://user-images.githubusercontent.com/48654609/168914109-704cad82-246d-4ad6-a521-eb719884574d.png">
