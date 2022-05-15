# getIsVertical

Liefert __true__, wenn die angegebene Ausrichtung eine vertikale Trennwand erfordert. __getIsVertical__ wird vom Modul __Divider__ verwendet.

## Use
<pre><code>use &lt;../Base/Placement.scad&gt
include <../Base/PlacementOptions.scad></pre></code>

## Syntax
<pre><code>getIsVertical(
  align);
</pre></code>

| Parameter | Beschreibung |
| ------ | ------ |
| align | Wenn __AlignRight__ oder __AlignLeft__ wird __true__ geliefert; sonst __false__. |

## Rückgabewert
__true__ wenn die Ausrichtung in *align* eine vertikale Trennwand erfordert; sonst __false__.
