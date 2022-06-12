# getBoxUsageHeight

Funktion: Liefert die Höhe des nutzbaren Innenraums der fischertechnik Sortierbox. Dies ist die Höhe vom Boden bis zum oberen Absatz, auf dem ein gestapelter Sortierkasten steht.

## Use
```
use <../Base/Boxes.scad>
```

## Syntax
```
getBoxUsageHeight(
    height = 40);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| height | Decimal | Höhe der Box vom Boden bis zum oberen Rand. Die Fischertechnikkästen sind alle 40 mm hoch. Mit der Bibliothek lassen sich aber auch Kästen mit anderen Höhen erzeugen ([__BoxBase__](BoxBase.md)). In diesem fall muss die abweichende Höhe hier angegeben werden, um die innerere nutzbare Höhe zu ermitteln.

## Rückgabewert
Höhe des benutzbaren Bereichs im Fischertechnik-Sortierkasten in mm. Die Wände sind außen etwa 5 mm höher, haben aber einen Absatz, in den ein gestapelter Kasten oder ein Deckel gelegt wird.
