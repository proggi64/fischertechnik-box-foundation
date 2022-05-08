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

| Parameter | Beschreibung |
| ------ | ------ |
| elementDepth | Höhe des Elements, welches vertikal ausgerichtet platziert werdn soll. |
| spaceDepth | Höhe der Fläche, in der das Element ausgerichtet platziert werden soll. |
| align | Mögliche Werte aus der Datei *PlacementOptions.scad*: __AlignTop__ (Standard), __AlignCenter__ und __AlignBottom__. |
| offset | __AlignBottom__: Position vom unteren Rand<br/>__AlignCenter__: Relative Position vom Zentrum aus (positiv nach oben, negativ nach unten)<br/>__AlignTop__: Relative Position vom oberen Rand (positive Werte nach unten). Dabei wird der Abstand des oberen Rands des Elements zum oberen Rand des Bereichs (space) gemessen. |
