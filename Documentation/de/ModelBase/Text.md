# Text

Erzeugt einen reliefartigen Text im Boden des Sortierkastens. Schriftart und -größe ist vorgegeben und ähnelt den von Fischertechnik bei den Originalsortierkästen verwendeten. Die Höhe der Reliefschrift ist ebenfalls vorgegeben 0,2 mm.

<img width="355" alt="Textec1" src="https://user-images.githubusercontent.com/48654609/168427252-90fc3de7-93dc-4179-be83-233f8b58dcaa.png">

Um den Text im Kasten zu platzieren, kann [__Place__](../Base/Place.md)) eingesetzt werden. Es gibt leider keine Möglichkeit, die Fläche des Textes zu ermitteln. Um ihn mittig zu platzieren, sollte deswegen __AlignCenter__ verwendet werden.

## Use
```
use <../ModelBase/Simple.scad>
include <../Base/PlacementOptions.scad>
```

## Syntax
```
Text(
  text, 
  alignX=AlignCenter,
  alignY=AlignCenter);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| text | String | Auszugebender Text. Unicodezeichen mit Code größer 255 sind möglich, aber nicht alle Zeichen sind im verwendeten Font enthalten. Zeilenumbrüche und andere Steuerzeichen werden nicht unterstützt. |
| alignX | Integer (Enum) | Gibt an, ob der Text linksbündig (__AlignLeft__), rechtsbündig (__AlignRight__) oder zentriert (__NoCenter__) an den Koordinaten ausgerichtet wird. |
| alignY | Integer (Enum) | Gibt an, ob an die untere (__AlignBottom__), obere (__AlignTop__) Basislinie oder zentriert (__NoAlign__) ausgerichtet wird. |

## Beispiel

```
use <../../Base/Placement.scad>
use <../../ModelBase/Simple.scad>

include <../../Base/PlacementOptions.scad>

color("blue") {
Text("Default");

Place(0, 20)
Text("xAlign Center", xAlign=AlignCenter);

Place(0, 40)
Text("xAlign Right", xAlign=AlignRight);

Place(0, 60)
Text("xAlign Left", xAlign=AlignLeft);

Place(40, 0)
Text("yAlign Top", yAlign=AlignTop);

Place(-40, 0)
Text("yAlign Bottom", yAlign=AlignBottom);
}
```

<img width="355" alt="Text" src="https://user-images.githubusercontent.com/48654609/168427165-88703d8e-61dc-4371-a5d9-b9ebfce5866e.png">
