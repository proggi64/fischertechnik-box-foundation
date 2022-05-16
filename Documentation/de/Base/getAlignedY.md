# getAlignedY

Funktion: Liefert die Y-Koordinate (vertikale Ausrichtung), um ein Objekt einer Ausrichtung entsprechend zu platzieren. Die Funktion wird u.a. vom __Place__-Modul verwendet.

## Use
<pre><code>use &lt;../Base/Alignment.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>getAlignedY(
  elementDepth, 
  spaceDepth, 
  align=AlignTop, 
  offset=0);
</pre></code>

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| elementDepth | Decimal | Höhe des Elements, welches vertikal ausgerichtet platziert werden soll. |
| spaceDepth | Decimal | Höhe der Fläche, in der das Element ausgerichtet platziert werden soll. |
| align | Integer (Enum) | Mögliche Werte aus der Datei *PlacementOptions.scad*: __AlignTop__ (Standard), __AlignCenter__ und __AlignBottom__. |
| offset | Decimal | Bei __AlignBottom__: Position vom unteren Rand<br/>Bei __AlignCenter__: Relative Position vom Zentrum aus (positiv nach oben, negativ nach unten)<br/>Bei __AlignTop__: Relative Position vom oberen Rand (positive Werte nach unten). Dabei wird der Abstand des oberen Rands des Elements zum oberen Rand des Bereichs (space) gemessen. |

## Rückgabewert
Y-Position, die sich aus der Tiefe des Elements *elementDepth*, der vertikalen Strecke *spaceDepth*, der Ausrichtung *align* und dem optionalen *offset* ergibt. Diese Position bezieht sich auf den unteren Rand des Elements und kann direkt für __Place__ oder __translate__ verwendet werden.
