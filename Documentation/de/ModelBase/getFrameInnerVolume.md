# getFrameInnerVolume

Funktion: Liefert das innere Volumen eines Rahmens.

Angegeben muss dafür das Volumen des Bauteils. Die zurückgelieferten X- und Y-Werte enthalten die Toleranz.

## Use
```
use <../ModelBase/Complex.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
getFrameInnerVolume(
  volume, 
  tolerance=getTolerance());
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| volume | \[x,y,z] | Volumen des Bauteils, das im Rahmen Platz haben soll. Ausnahme: Die Höhe in *volume.z* entspricht der Höhe des Rahmens und nicht des Bauteils. |
| tolerance | Decimal | Toleranz, die im Rahmen verwendet werden soll. Standard ist [__getTolerance__](../Base/getTolerance.md). Um diesen Betrag wird das innere Volumen in X- und Y-Richtung vergrößert, damit das Bauteil nach dem Druck hineinpasst. In manchen Spezialfällen soll der Rahmen um keinen Toleranzbetrag vergrößert werden, dann muss hier 0 angegeben werden. |

## Rückgabewert
Liefert das innere Volumen des Rahmens in einer \[x,y,z]-Liste. Die Werte enthalten dieaddierte  angegebene Toleranz und für die Höhe den um [__getExcess__](../Base/getExcess.md) erhöhten Betrag. Dadurch kann das innere Volumen über __difference__ aus einem äußeren Block geschnitten werden, ohne dass eine Fläche durch Rundungsdifferenz erhalten bleibt.
