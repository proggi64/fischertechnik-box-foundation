# getAlignedX

Funktion: Liefert die X-Koordinate (horizontale Ausrichtung), um ein Objekt einer Ausrichtung entsprechend zu platzieren. Die Funktion wird u.a. vom [__Place__](Place.md)-Modul verwendet.

## Use
<pre><code>use &lt;../Base/Alignment.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>getAlignedX(
  elementWidth, 
  spaceWidth, 
  align=AlignRight, 
  offset=0);
</pre></code>

| Parameter | Type | Beschreibung |
| ------ | ------ | ------ |
| elementWidth | Decimal | Breite des Elements, welches horizontal ausgerichtet platziert werden soll. |
| spaceWidth | Decimal | Breite der Fläche, in der das Element ausgerichtet platziert werden soll. |
| align | Integer (Enum) | Mögliche Werte aus der Datei *PlacementOptions.scad*: __AlignRight__ (Standard), __AlignCenter__ und __AlignLeft__. |
| offset | Decimal | Bei __AlignLeft__: Position vom linken Rand<br/>Bei __AlignCenter__: Relative Position vom Zentrum aus (positiv nach rechts, negativ nach links)<br/>Bei __AlignRight__: Relative Position vom rechten Rand (positive Werte nach links). Dabei wird der Abstand des rechten Rands des Elements zum rechten Rand des Bereichs (space) gemessen. |

## Rückgabewert
X-Position, die sich aus der Breite des Elements *elementWidth*, der Breite der Strecke *spaceWidth*, der Ausrichtung *align* und dem optionalen *offset* ergibt. Diese Position bezieht sich auf den linken Rand des Elements und kann direkt für [__Place__](Place.md) oder __translate__ verwendet werden.
