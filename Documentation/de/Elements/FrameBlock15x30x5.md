# FrameBlock15x30x5
Baustein 15x30x5 mit einem Zapfen.
- 35049

![FrameBlock15x30x5](../../images/FrameBlock15x30x5.png)

## Use
```
use <../Elements/FrameBlock15x30x5.scad>
```

## Syntax
```
FrameBlock15x30x5(
    columns=1, 
    rows=1);

space = getFrameBlock15x30x5Space(
    columns=1, 
    rows=1);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| columns | Integer | Anzahl der Bausteine nebeneinander (X-Richtung). |
| rows | Integer | Anzahl der Bausteine untereinander (Y-Richtung). |

## Rückgabewert getFrameBlock15x30x5Space
Fläche als \[x,y]-Liste