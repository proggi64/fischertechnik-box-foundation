# getIsVertical

Liefert __true__, wenn die angegebene Ausrichtung eine vertikale Trennwand erfordert. __getIsVertical__ wird vom Modul [__Divider__](../ModelBase/Divider.md) verwendet um festzustellen, ob die Trennwand auf der X- oder Y-Achse verläuft..

## Use
```
use <../Base/Placement.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getIsVertical(
  align);
```

| Parameter | Beschreibung |
| ------ | ------ |
| align | Wenn __AlignRight__ oder __AlignLeft__ wird __true__ geliefert; sonst __false__. |

## Rückgabewert
__true__ wenn die Ausrichtung in *align* eine vertikale Trennwand erfordert; sonst __false__.
