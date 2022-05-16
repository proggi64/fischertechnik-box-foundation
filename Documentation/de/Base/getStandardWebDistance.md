# getStandardWebDistance

Funktion: Liefert den Abstand eines Stegs zur jeweiligen Ecke eines andockbaren Elements.

<img width="213" alt="EdgedFrame" src="https://user-images.githubusercontent.com/48654609/167309119-bf923638-9be9-48ca-84ab-4b213bbeb4a0.png">

Im Bild ist dies der Abstand der beiden gelben Stege an der linken Ecke zur Ecke. Das Basis-Modul [__DockableEdgedFrame__](../ModelBase/DockableEdgedFrame.md) setzt die Funktion ein.

## Use
```
use <../Base/Constants.scad>
```

## Syntax
```
getStandardWebDistance();
```

## Rückgabewert
Abstand eines generierten Stegs bei [__DockableEdgedFrame__](../ModelBase/DockableEdgedFrame.md) zur Ecke der Nutzfläche des Elements. Dieser Abstand wird von der Ecke zum Rand des Stegs gemessen, der zur Ecke zugewandt ist. In ec1 bis ec3 ist dieser Abstand z.B. 15 mm, was auch hier als Standardwert definiert wurde.
