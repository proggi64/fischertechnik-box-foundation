# getIsHorizontal

Liefert __true__, wenn die angegebene Ausrichtung eine horizontale Trennwand erfordert. __getIsHorizontal__ wird vom Modul [__Divider__](../ModelBase/Divider.md) verwendet um festzustellen, ob der Trenner auf der X- oder Y-Achse verläuft.

## Use
```
use <../Base/Placement.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getIsHorizontal(
  align);
```

| Parameter | Beschreibung |
| ------ | ------ |
| align | Wenn __AlignBottom__ oder __AlignTop__ wird __true__ geliefert; sonst __false__. |

## Rückgabewert
__true__ wenn die Ausrichtung in *align* eine horizontale Trennwand erfordert; sonst __false__.
