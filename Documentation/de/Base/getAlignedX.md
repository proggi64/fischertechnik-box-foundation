# getAlignedX

Funktion: Liefert die X-Koordinate (horizontale Ausrichtung), um ein Objekt einer Ausrichtung entsprechend zu platzieren. Die Funktion wird u.a. vom __Place__-Modul verwendet.

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

| Parameter | Beschreibung |
| ------ | ------ |
| elementWidth | Breite des Elements, welches horizontal ausgerichtet platziert werdn soll. |
| spaceWidth | Breite der Fläche, in der das Element ausgerichtet platziert werden soll. |
| align | Mögliche Werte aus der Datei *PlacementOptions.scad*: __AlignRight__ (Standard), __AlignCenter__ und __AlignLeft__. |
| offset | __AlignLeft__: Position vom linken Rand<br/>__AlignCenter__: Relative Position vom Zentrum aus (positiv nach rechts, negativ nach links)<br/>__AlignRight__: Relative Position vom rechten Rand (positive Werte nach links). Dabei wird der Abstand des rechten Rands des Elements zum rechten Rand des Bereichs (space) gemessen. |
