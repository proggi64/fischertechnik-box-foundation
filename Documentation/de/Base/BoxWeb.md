# BoxWeb

Erzeugt einen kurzen Steg an der Innenwand einer Sortierbox. Ein solcher Steg ist immer vollständig mit der Außenwand verschmolzen, so dass kein Spalt entsteht.

Solche Stege befinden sich an verschiedenen Positionen der Original-Sortierboxen und verhindern, dass die gestapelten Boxen zu tief in die untere Box versinken. Viele der Stege sind auch Teil einer Trennwand, die meistens abgestuft niedriger als der Steg selbst verläuft. Dazu muss lediglich das Modul __Wall__ (aus *ModelBase/Simple.scad*) mit den Stegen kombiniert werden.

## Use
<pre><code>use &lt;../Base/Boxes.scad&gt;
include &lt;../Base/PlacementOptions.scad&gt;</pre></code>

## Syntax
<pre><code>BoxWeb(
  corner, 
  side, 
  distance, 
  box=getBox190Space(), 
  webWidth=getBoxWebWidth(), 
  webThickness=1.0);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| corner | Ecke, in welcher der Steg platziert werden soll. Die numerischen Werte sind als Konstanten in *PlacementOptions.scad* definiert: __LowerLeft__, __UpperLeft__, __UpperRight__ oder __LowerRight__, |
| side | Seite der Ecke (*corner*) von außen betrachtet, wo der Steg platziert werden soll. Die numerischen Werte sind als Konstanten in *PlacementOptions.scad* definiert: __LeftOfCorner__ oder __RightOfCorner__. Von oben auf die Sortierbox gesehen, ist __LeftOfCorner__ immer im Uhrzeigersinn neben der Ecke. |
| distance | Abstand des Stegs von der Ecke. Es wird immer der Abstand zum Rand der Wand gerechnet, welcher der Ecke näher ist. |
| box | Fläche, auf der die Stege platziert werden. Standard ist der nutzbare Raum der Box 190 x 130. |
| webWidth | Länge der Oberseite des Stegs. So weit ragt der Steg von der Wand in den Innenraum der Box. Der Standardwert ist in *Constants.scad* als Funktion __getBoxWebWidth()__ definiert. |
| webThickness | Stärke des Stegs. Dies entspricht im Standard nicht der normalen Wandstärke der Rahmen und Trenner, sondern ist etwas dünner. Bei mit Trennern verschmolzenen Stegen sollte hier __getDividerThickness()__ als Wert übergeben werden (aus *Constants.scad*). |

## Beispiele
<pre><code>Test/Base/BoxesTestBoxWeb.scad</code></pre>

### Linke untere Ecke
<pre><code>use <../../Base/Boxes.scad>
include <../../Base/PlacementOptions.scad>

#Box190();

BoxWeb(LowerLeft, LeftOfCorner, 7.5);
</pre></code>

<img width="435" alt="BoxesTestBoxWeb01" src="https://user-images.githubusercontent.com/48654609/166932487-8b8f3b92-9774-442c-9c05-6fb0642ec34e.png">

### Rechte obere Ecke
<pre><code>use <../../Base/Boxes.scad>
include <../../Base/PlacementOptions.scad>

#Box190();

BoxWeb(UpperRight, RightOfCorner, 15);
</pre></code>

<img width="435" alt="BoxesTestBoxWeb02" src="https://user-images.githubusercontent.com/48654609/166933860-3688e296-0f26-47b1-b465-35a509529417.png">
