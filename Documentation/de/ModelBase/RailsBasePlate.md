# RailsBasePlate

Erzeugt Fläche mit Stegen für die Ablage einer Grundplatte.

Diese Art Element wurde bei den Grundkästen 50 für die roten Grundbauplatten eingesetzt.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
RailsBasePlate(
    width, 
    depth)
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| width | Decimal | Breite der Grundplatte. |
| depth | Decimal | Tiefe der Grundplatte. |

## Beispiel
```
use <../../ModelBase/Complex.scad>

RailsBasePlate(90, 90);

translate([100, 0])
    RailsBasePlate(180, 90);
```

<img width="272" alt="RailsBasePlate" src="https://user-images.githubusercontent.com/48654609/169355765-72c33ca6-5597-4999-983c-5f18c3b129dc.png">
