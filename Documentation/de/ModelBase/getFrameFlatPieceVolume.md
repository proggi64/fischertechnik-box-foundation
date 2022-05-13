# getFrameFlatPieceVolume

Funktion: Liefert das Volumen, das ein Element benötigt, das mit dem Modul __FrameFlatPiece__ erzeugt wird. __FrameFlaPiece__ erzeugt einfache Rahmen, in welche die Flachstücke 30 oder 60 passen.

## Use
<pre><code>use &lt;../ModelBase/Complex.scad&gt;</pre></code>

## Syntax
<pre><code>getFrameFlatPieceVolume(
  count,
  size);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| count | Anzahl der Flachstücke, die in den Rahmen passen sollen. |
| size | Länge der Flachstücke (nur 30 oder 60). |

## Rückgabewert
Liste mit der Breite, Tiefe und Höhe des Rahmens inklusive der Wände. Die Funktion wird von den __Space__-Funktionen der Elemente für Flachstücke verwendet.
