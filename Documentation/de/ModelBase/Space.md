# Space

Erzeugt eine dünne Fläche, die beim Platzieren mit dem Boden des Sortierkastens verschmilzt.

__Space__ wird üblicherweise als Basisfläche für praktisch alle Elemente erzeugt. Die Fläche hat die Stärke, die [__getExcess__](../Base/getExcess.md) liefert. Sie dient einer besseren Orientierung beim Entwurf und der Platzierung von Elementen. Die Ausdehnung entspricht normalerweise der Fläche, die __get*ElementName*Space__ liefert. Die Elemente werden um die Stärke von [__getExcess__](../Base/getExcess.md) in den Boden des Sortierkastens versenkt, so dass die __Space__-Fläche BEstandteil des Kastenbodens wird.

## Use
```
use <../ModelBase/Simple.scad>
```

## Syntax
```
Space(
  space);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| space | \[x,y] | Ausdehnung der Fläche, die erzeugt wird. |

## Beispiel

```
use <../../ModelBase/Simple.scad>

Space([10,10]);

translate([15, 0, 0])
    Space([20,30]);
```

<img width="317" alt="Space" src="https://user-images.githubusercontent.com/48654609/168910627-2cfd038d-24e7-4c3a-8364-09ba78615f7c.png">
