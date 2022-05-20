# BoxBase

Erzeugt einen stapelbaren, zu Fischertechnik Sortierkästen kompatible Kasten.

__BoxBase__ können die Breite und Tiefe der Box als Parameter mitgegeben werden. Die Module [__Box190__](Box190.md) und [__Box130__](Box130.md) erzeugen bereits zum Sortierkasten 1000 passende Kästen und verwenden dieses Modul.

## Use
```
use <../Base/Boxes.scad>
```

## Syntax
```
BoxBase(
  width,
  depth,
  height=40);
```

| Parameter | Typ | Beschreibung |
| ------ | ------ | ------ |
| width | Decimal | Breite der Box am oberen Rand. Die Boxen werden konisch nach unten etwas enger und die Wände nehmen auch etwas Plart ein, so dass der innere Platz am Boden um einige Millimeter schmaler ist. *width* sollte den Maßen der Originalboxen berücksichtigen. Ein Sortierkasten für die Box 1000 ist am oberen Rand exakt 190 x 130 mm groß. |
| depth | Decimal | Tiefe der Box am oberen Rand. Siehe dazu Anmerkungen zu *width*. |
| height| Decimal | Alle Sortierkästen von Fischertechnik sind 40 mm hoch (hier Standardwert). Denkbar sind aber auch spezielle Lösungen mit höherer und niedrigerer Box übereinander gestapelt, die wieder zusammen die Box-1000-Normhöhe ergeben. So bekommt man Teil unter, die höher als die ca. 35 mm sind, die in die Boxen noch passen. |

## Beispiele
Siehe *Test/Base/BoxesTestBoxWeb.scad*
