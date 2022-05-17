# getFrameAxisDepth

Funktion: Liefert die Tiefe der Halterungen, die vom Modul [__FrameAxis__](FrameAxis.md) an das Modul [__ElevatedFramesWithCutoff__](ElevatedFramesWithCutoff.md) als *depth* übergeben wird. Der Wert ist so bemessen, dass der Rahmen 0,4 mm breiter als die Achse selbst ist. So enstehen an den offenen Wänden der Halterungen je 0,2 mm tiefe Stege, welche die Achse quasi einklemmen.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
getFrameAxisDepth();
```

## Rückgabewert
Tiefe der Halterungen des Moduls [__FrameAxis__](FrameAxis.md) in mm.
