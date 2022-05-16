# getBoxWebWidth

Funktion: Liefert die Standardlänge eines Stegs eines fischertechnik Sortierkastens. Die Stege sind auf der Höhe, die [__getBoxUsageHeight__](getBoxUsageHeight.md) liefert und unterstützen das Stapeln von Sortierkästen aufeinander. Sie ragen um den Betrag, den __getBoxWebWidth__ liefert, in den Inneraum der Box hinen. Sie können mit dem Modul [__BoxWeb__](BoxWeb.md) erzeugt werden.

<img width="537" alt="BoxesTestBoxWeb01" src="https://user-images.githubusercontent.com/48654609/167318969-92523f26-9f76-457a-9ba3-4f03b061b8a4.png">

## Use
```
use <../Base/Boxes.scad>
```

## Syntax
```
getBoxWebWidth();
```

## Rückgabewert
Betrag in mm, um den ein Steg von der oberen Seitenwand in den nutzbaren Bereich des Sortierkastens hineinragt. Der Wert wird als Standardwert verwendet, wenn bei [__BoxWeb__](BoxWeb.md) kein abweichender Betrag angegeben wird. Durch die schräge Seitenwand verringert sich dieser Betrag nach unten zum Boden hin.
