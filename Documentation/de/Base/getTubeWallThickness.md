# getTubeWallThickness

Funktion: Liefert Stärke der Wände eines Element-Zylinders.

<img width="261" alt="SimpleTestTube" src="https://user-images.githubusercontent.com/48654609/167317804-9f8d3200-190d-41e7-bd2a-7cd4dae81205.png">

Die Wände von Zylindern sind etwas schmäler als die normaler Trennwände. Das Basis-Modul __Tube__ verwendet die Funktion.

## Use
<pre><code>use &lt;../Base/Constants.scad&gt;</pre></code>

## Syntax
<pre><code>getTubeWallThickness();
</pre></code>

## Rückgabewert
Standardwert für die Stärke der Zylinderwände. Dies ist ein um einen kleinen Faktor verringerter Wert von __getDividerThickness()__.
