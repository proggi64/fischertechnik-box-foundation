# FrameDifferentialGearbox
.
- nnnnn

![FrameDifferentialGearbox](../../images/FrameDifferentialGearbox.png)

## Use
```
use <../Elements/FrameDifferentialGearbox.scad>
```

## Syntax
```
FrameDifferentialGearbox(
    length=110);

space = get$FrameDifferentialGearboxSpace(
    length=110);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| length | Decimal | Länge der Achse des Differentials. Die etwas neuere Version (schwarz) hatte 110 mm Länge (Standardwert), die ältere (rot) 120. |

## Rückgabewert getFrameDifferentialGearboxSpace
Fläche als \[x,y]-Liste