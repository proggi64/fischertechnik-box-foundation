# getFrameOuterVolume

Funktion: Liefert das äußere Volumen ("bounding box") eine Rahmens.

Angegeben muss dafür das Volumen des Bauteils.

## Use
```
<pre><code>use <../ModelBase/Complex.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getFrameOuterVolume(
  volume, 
  tolerance=getTolerance());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| volume | \[x,y,z] | Volumen des Bauteils, das im Rahmen Platz haben soll. Ausnahme: Die Höhe in *volume.z* entspricht der Höhe des Rahmens, das Bauteil sollte darüber hinaus ragen, als einen höhren Wert für Z haben. |
| tolerance | Decimal | Toleranz, die im Rahmen verwendet werden soll. Standard ist [__getTolerance__](../Base/gettolerance.md). Um diesen Betrag wird das innere Volumen in X- und Y-Richtung vergrößert, damit das Bauteil nach dem Druck hineinpasst. In manchen Spezialfällen soll der Rahmen um keinen Toleranzbetrag vergrößert werden, dann muss hier 0 angegeben werden. |

## Rückgabewert
Liefert das äußere Volumen des Rahmens in einer \[x,y,z]-Liste.
