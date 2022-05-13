# getFrameAxisSpace

Funktion: Liefert die Fläche, eine mit __FrameAxis__ erzeugte Achshalterung für die angegebene Achslänge benötigt.

<img width="344" alt="TestFrameAxis50" src="https://user-images.githubusercontent.com/48654609/168169350-8ad37a91-c90a-4ef4-9721-c32ca065ae90.png">

## Use
<pre><code>use &lt;../ModelBase/Complex.scad&gt;</pre></code>

## Syntax
<pre><code>getFrameAxisSpace(
  length);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| length | Länge der Achse, für welche die Achshalterung erzeugt wird. |

## Rückgabewert
Liste mit den errechneten X-, Y- und Z-Werten. Der Z-Wert (die Höhe) ist die Höhe der Halterungen.