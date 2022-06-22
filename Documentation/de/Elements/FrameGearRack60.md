# FrameGearRack60
Hubzahnstange 60.
- 37351

![FrameGearRack60](../../images/FrameGearRack60.png)

## Use
```
use <../Elements/FrameGearRack60.scad>
```

## Syntax
```
FrameGearRack60(
    dock=false);

space = getFrameGearRack60Space(
    dock=false);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| dock | Boolean | __true__ wenn die linke Seite des Rahmens an die Wand gedockt werden soll. Der Rahmen ist dann nach links offen und der X-Nullpunkt ist um die Wandstärke nach rechts verschoben. Die Länge der Fläche ist um einen Wandbreite reduziert. |

## Rückgabewert getFrameGearRack60Space
Fläche als \[x,y]-Liste