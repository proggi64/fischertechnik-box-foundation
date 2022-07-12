# LockingAxis

Erzeugt eine stehende Achse für Rastachsenkupplungen.

Auf diese Achse können Elemente mit einer Rastachsenkupplung gesteckt werden, die bis zu 30 mm lang sind.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
LockingAxis(
    height = getAxisLockingLength());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| height | Decimal | Höhe der Achse. Mehr als 30 mm sind nicht zu empfehlen, da die nutzbare Höhe des Sortierkastens nur etwa 40 mm beträgt und solche Achsen mit zunehmender Höhe leichter abbrechen können. Standard ist die Höhe des Rastbereichs einer Rastachse. |


## Beispiel

```
use <../../ModelBase/Simple.scad>

LockingAxis();

Place(10, rotation=Rotate90)
    LockingAxis();
```

![LockingAxis](../../images/LockingAxis.png)