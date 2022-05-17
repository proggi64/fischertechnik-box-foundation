# getFrameFlatPieceVolume

Funktion: Liefert das Volumen, das ein Element benötigt, das mit dem Modul [__FrameFlatPiece__](FrameFlatPiece.md) erzeugt wird. __FrameFlaPiece__ erzeugt einfache Rahmen, in welche die Flachstücke 30 oder 60 passen.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
getFrameFlatPieceVolume(
  count,
  size);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| count | Integer | Anzahl der Flachstücke, die in den Rahmen passen sollen. |
| size | Decimal | Länge der Flachstücke (30 oder 60). |

## Rückgabewert
Liste mit der Breite, Tiefe und Höhe des Rahmens inklusive der Wände. Die Funktion wird von den __Space__-Funktionen der Elemente für Flachstücke verwendet.
