# getInlayBaseSpace

Funktion: Liefert die nutzbare Fläche einer mit [__InlayBase__](InlayBase.md) angelegten Bodenplatte.

## Use
```
use <../Base/InlayBase.scad>
```

## Syntax
```
getInlayBaseSpace(
    space);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| space | \[x, y] | Breite und Tiefe der Bodenplatte. Hiervon werden Toleranzen abgerechnet, damit die Platte in einen Kasten der angegebenen Größe passt. |

## Rückgabewert
x/y-Wertpaar (\[x, y\]), welche die Breite und Tiefe der Bodenplatte enthält. Die Fläche ist um die Toleranzen kleiner als der angegebene *space*.
