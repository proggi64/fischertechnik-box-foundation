# getWidth

Funktion: Liefert die Summe der Breiten alle angegebenen Flächen und berücksichtigt die angegebenen Drehungen dieser Flächen.

__getWidth__ ist für interne Zwecke gedacht, kann aber auch für eigene Berechnungen verwendet werden.

## Use
<pre><code>use &lt;../Base/Deployment.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>getWidth(spaces, rotations, count, i=0);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| spaces | Flächen (x/y-Listen) der Flächen, deren Breiten summiert werden sollen. In *count* muss die Zahl der Elemente angegeben werden. |
| rotations | Liste der Rotationswerte für die Flächen. Die jeweilige anzuwendende Rotation hat denselben Index wie die Fläche, die Zahl muss gleich der Zahl der angegebenen Flächen sein. Mögliche Einzelwerte sind __Rotate0__, __Rotate90__, Rotate_180__ und __Rotate270__. Durch die Drehung können Breite (width, x) und Tiefe (depth, y) vertauscht berechnet werden. |
| count | Anzahl der Flächen und Rotationswerte. Die Funktion wird intern rekursiv aufgerufen, deswegen dieser Parameter. |
| i | Startindex der zu addierenden Flächen. Für die rekursiven Aufrufe. |

## Rückgabewert
Summe der Breiten aller in *spaces* angegebenen Flächen. Dabei werden die in *rotations* angegebenen Drehungen der Flächen eingerechnet.
