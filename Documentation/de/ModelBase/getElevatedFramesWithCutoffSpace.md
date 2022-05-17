# getElevatedFramesWithCutoffSpace

Funktion: Liefert die Fläche, die ein Element benötigt, das mit dem Modul __ElevatedFramesWithCutoff__ erzeugt wird.

__ElevatedFramesWithCutoff__ ist das Basismodul, was für alle Achshalter eingesetzt wird.

<img width="344" alt="TestFrameAxis50" src="https://user-images.githubusercontent.com/48654609/168169350-8ad37a91-c90a-4ef4-9721-c32ca065ae90.png">

## Use
```
use &lt;../ModelBase/Complex.scad&gt;
```

## Syntax
```
getElevatedFramesWithCutoffSpace(
  volume);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| volume | \[x,y,z] | Volumen des Bauelements, welches in dem Rahmen passen soll. Die Rahmen und die Toleranz werden im Rückgabewert berücksichtigt. |

## Rückgabewert
Liste mit den errechneten X-, Y- und Z-Werten. Der Z-Wert (die Höhe) gibt dabei unverändert den Z-Wert aus dem Eingabeparameter *volume* zurück.
