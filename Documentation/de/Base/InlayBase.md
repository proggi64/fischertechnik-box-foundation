 # InlayBase

Erzeugt den Boden für einen Einsatz in einen Original Fischertechnik-Kasten. Der Boden hat abgerundete Ecken und berücksichtigt Toleranzen, damit er in einen vorhandenen Kasten passt.

Das Modul wird intern vom Modul [__Box190Inlay__](Box190Inlay.md) verwendet.

## Use
```
use <../Base/InlayBase.scad>
```

## Syntax
```
InlayBase(
  space);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| space | \[x, y] | Breite und Tiefe der Bodenplatte. Hiervon werden Toleranzen abgerechnet, damit die Platte in einen Kasten der angegebenen Größe passt. Die tatsächliche Größe kann mit [__getInlayBaseSpace__](getInlayBaseSpace.md) ermittelt werden. |