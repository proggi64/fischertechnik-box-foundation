# getFrameAxisMiddleSupportSpace

Funktion: Liefert die Fläche für ein mit [__FrameAxisMiddleSupport__](FrameAxisMiddleSupport.md) erzeugtes Element.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
getFrameAxisMiddleSupportSpace(
  length=8);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| length | Decimal | Exakte Länge des Elements. Es wird keine Toleranz addiert. |

## Rückgabewert
Fläche, welche die Mittelstütze benötigt. Sie wird z.B. für die mittige Platzierung in [__FrameAxis__](FrameAxis.md)-Elementen eingesetzt.
