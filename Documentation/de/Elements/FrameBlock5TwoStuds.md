# FrameBlock5TwoStuds
Baustein 5 mit zwei Zapfen.
- 37238

![FrameBlock5TwoStuds](../../images/FrameBlock5TwoStuds.png)

## Use
```
use <../Elements/FrameBlock5TwoStuds.scad>
```

## Syntax
```
FrameBlock5TwoStuds(
    count=1);

space = get$FrameBlock5TwoStudsSpace(
    count=1);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| count | Integer | Anzahl der Bausteine nebeneinander |

## Rückgabewert getFrameBlock5TwoStudsSpace
Fläche als \[x,y]-Liste

## Beispiel

```
use <../../Elements/FrameBlock5TwoStuds.scad>

count=3;
FrameBlock5TwoStuds(count);
```

![3 Bausteine](../../images/TestFrameBlock5TwoStuds_3.png)