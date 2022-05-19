# getFrameBracketWidth

Funktion: Liefert die Breite für eine Halterung eines Getriebeaufsatzes ohne die Achse/Schnecke.

Die Breite ist inkl. der Wände des Rahmens, aber ohne die Achse bzw. Schnecke, die aus dem Rahmen herausragt.

## Use
```
use <../ModelBase/Complex.scad>
```

## Syntax
```
getFrameBracketWidth();
```

## Rückgabewert
Außenfläche nur des Rahmens für den Getriebehalter eines von [__FrameBracket__](FrameBracket.md) erzeugten Elements als \[x,y]-Liste. In diesen Rahmen wird der graue Halter gestellt, Achse bzw. Schnecke ragen aus dem Rahmen heraus.