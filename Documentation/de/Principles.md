# Konstruktionsprinzipien

Für die Konstruktion der Bibliothek wurden einige Prinzipien festgelegt, die beim weiteren Ausbau beachtet werden sollten, die aber auch wertvoll für den Einsatz sind.

## Ziel 3D-Druck

Der gesamte Code ist darauf ausgerichtet, dass die 3D-Druck-Ergebnisse verwendbare Sortierboxen produzieren.

- Sinnvolle Toleranzen für alle Elemente (Constants.scad - getTolerance()), damit die Teile in die Elemente passen
- Saubere Verschmelzung von 3D-Elementen und Box (Constants.scad - getExcess()), um ungewollte Luftspalte zu vermeiden
- Druckbare Wandstärken, die hinreichend stabil bleiben sollten

