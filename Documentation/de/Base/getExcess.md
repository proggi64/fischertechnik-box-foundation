# getExcess

Funktion: Liefert den Betrag, um den ein Objekt mit einem verbundenen Objekt verschmilzt.

Dieser Betrag wird verwendet, um Trennwände ineinander zu verschmelzen oder Elemente in den Boden des Sortierkastens abzusenken. Dadurch werden ungewollte Luftspalte durch Rundungsfehler vermieden. Der Wert von __getExcess__ wird dabei den Objektgrößen zugeschlagen, wenn ein Objekt mit einem anderen verschmolzen werden soll. Der Betrag ist sehr gering und übersteigt das Auflösungsvermögen üblicher 3D-Drucker, unterstützt aber das Generieren sauberer STL-Dateien.

## Use
```
use <../Base/Constants.scad>
```

## Syntax
```
getExcess();
```

## Rückgabewert
Betrag in mm (kleine Bruchteile von mm), die Objekte ineinander hineinragen, um Luftspalte zu vermeiden. Die Funktion wird intern durchgängig für die Verschmelzung von Elementen verwendet.
