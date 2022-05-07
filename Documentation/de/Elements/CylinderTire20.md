# CylinderTire20

__31017__ Halterung für 1-4 Reifen 20 (neuere Version ohne Zacken innen).

<img width="364" alt="CylinderTire20" src="https://user-images.githubusercontent.com/48654609/167253313-0449ef90-a537-4bf0-b7a0-9b72d6708f87.png">

## Use
<pre><code>use &lt;../Elements/CylinderTire20.scad&gt;</pre></code>

## Syntax
<pre><code>CylinderTire20(count=3);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| count | Anzahl der Reifen, die auf dem Halter gestapelt werden. Bis drei Reifen verändert die Gesamthöhe nicht, sondern nur die des Absatzes unten am Zylinder. Bei einer Zahl von vier hat der Zylinder keinen Absatz mehr und ist hoch genug für die vier gestapelten Reifen. |

## Beispiele
<pre><code>Test/Elements/TestCylinderTire20.scad</code></pre>

### Alle möglichen Werte für count

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
