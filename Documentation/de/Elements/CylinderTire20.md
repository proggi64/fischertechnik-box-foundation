# CylinderTire20

Halterung für 1-4 Reifen 20 (neuere Version ohne Zacken innen).

- 31017

<img width="364" alt="CylinderTire20" src="https://user-images.githubusercontent.com/48654609/167253313-0449ef90-a537-4bf0-b7a0-9b72d6708f87.png">

## Use
```
use <../Elements/CylinderTire20.scad>
```

## Syntax
```
CylinderTire20(
    count=3);

space = getCylinderTire20Space(
    count=3);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| count | Integer | Anzahl der Reifen, die auf dem Halter gestapelt werden. Bis drei Reifen verändert die Gesamthöhe nicht, sondern nur die des Absatzes unten am Zylinder. Bei vier hat der Zylinder keinen Absatz mehr und ist hoch genug für die vier gestapelten Reifen. Höhere zahlen sind nicht sinnvoll, da der Zylinder zu hoch für den Sortierkasten wird. |

## Rückgabewert getCylinderTire20Space
Grundfläche als \[x,y]-Liste.

## Beispiele
Test/Elements/TestCylinderTire20.scad

### Alle vier erlaubten Werte für count

<pre>code>use <../../Base/Placement.scad>
use <../../Base/Deployment.scad>
use <../../Elements/CylinderTire20.scad>

include <../../Base/PlacementOptions.scad>

CylinderTire20();

Place(40, 0)
    CylinderTire20(1);

Place(80, 0)
    CylinderTire20(2);

Place(120, 0)
    CylinderTire20(3);

Place(160, 0)
    CylinderTire20(4);
</pre></code>

<img width="364" alt="TestCylinderTire20" src="https://user-images.githubusercontent.com/48654609/167253410-a9aa6ae1-643a-4f5b-87e7-ab60987c21ee.png">
