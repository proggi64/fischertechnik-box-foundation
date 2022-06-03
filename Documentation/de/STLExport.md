# Elemente als STLs erzeugen
Mit OpenSCAD ist es sehr einfach, ein einzelnes Element als STL-Datei zu exportieren. Damit können die Elemente in CAD-Software weiter verwendet werden.

## Elemente ohne Parameter
Hier gibt es nur eine Variante, so dass nur ein einziger Export notwendig ist.

- die SCAD-Datei des gewünschten Elements aus dem __Elements__-Ordner in OpenSCAD öffnen
- der Dateiname entspricht 1:1 dem Namen aus der Dokumentation
- im Vorschaufenster erscheint bereits das Element
- Menüpunkt __Design__ | __Rendern F6__ wählen 
- die Farbe des Elements in der Vorschau wechselt von grau auf gelb
- Menüpunkt __Datei__ | __Exportieren...__ | __STL exportieren... F7__ wählen
- Zielverzeichnis im Dialog __STL Datei exportieren__ wählen
- Schaltfläche __Speichern__ klicken

## Elemente mit Parametern
Hier muss man sich die Variante einrichten, die man im jeweiligen Fall benötigt. Dazu sind die Parameter einzugeben. OpenSCAD hat ein schönes Feature namens __Customizer__. Die Elemente mit Parametern sind so erstellt, dass man ohne Änderungen des Codes die Parameter über diese Oberfläche einstellen und sich passende Varianten erstellen kann.

- SCAD laden wir bei den Elementen ohne Parameter
- Menüpunkt __Fenster__ | __Customizer__ anklicken

![STL Customizer count 1](../images/STL%20Customizer%201.png)

- __Element Parameters__ im Customizer-Fenster aufklappen
- alle Parameter des Elements sind jetzt hier sichtbar und können angepasst werden
- nach Änderung eines Parameters einfach die __Tab__-Taste drücken, die Vorschau wird aktualisiert

![STL Customizer count 3](../images/STL%20Customizer%203.png)

- dann wie bei *Elemente ohne Parameter* mit __Rendern__ fortfahren und bis __Speichern__ gehen
- verschiedenen Varianten sollte man unterschiedliche STL-Dateinamen geben
