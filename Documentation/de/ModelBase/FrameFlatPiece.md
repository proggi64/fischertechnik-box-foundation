# FrameFlatPiece

Erzeugt einen einfachen Rahmen, in den die angegebene Anzahl von Flachstücken hintereinander aufgestellt passt. Die Breite des Flachstücks wird angegeben. Sinnvoll sind nur 30 oder 60 mm. Die tatsächliche innere Breite des Rahmens enthält noch die Zapfen an den Enden der Flachstücke. Die Wandhöhe ist konstant 10 mm. Das Modul wird von den beiden Element-Modulen für die Flachstücke 30 und 60 verwendet.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
FrameFlatPiece(
  count,
  size);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| count | Integer | Anzahl der Flachstücke, die in den Rahmen passen sollen. Die Flachstücke werden mit den langen Seiten hintereinander gestellt. |
| size | Decimal | 30 oder 60 für die jeweiligen Flachstücke dieser Breite. |
