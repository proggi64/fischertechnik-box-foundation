# getFrameAxisDepth

Funktion: Liefert die Tiefe der Halterungen, die vom Modul __FrameAxis__ an das Modul __ElevatedFramesWithCutoff__ als *depth* übergeben wird. Der Wert ist so bemessen, dass der Rahmen 0,4 mm breiter als die Achse selbst ist. So enstehen an den offenen Wänden der Halterungen je 0,2 mm tiefe Stege, welche die Achse quasi einklemmen.

## Use
<pre><code>use &lt;../ModelBase/Complex.scad&gt;</pre></code>

## Syntax
<pre><code>getFrameAxisDepth();
</pre></code>

## Rückgabewert
Tiefe der Halterungen des Moduls __FrameAxis__ in mm.
