#import "../../../acronyms.typ": ac

= Haskell-gi
#ac("GTK") is a widget toolkit that allows the creation of UIs that work on well known operating systems. 
GTK widgets can be created programmatically, or with an XML UI definition. @gtk_project

Haskell-gi is a Haskell library implementing bindings to GTK.
The library allows widget creation in a rather imperative style.
There is a library that supports widget creation in a functional-style, gi-gtk-declarative #footnote("https://github.com/owickstrom/gi-gtk-declarative"), but that library is still experimental.
@haskell_gi

Pros:
- Both the UI and backend logic can be implemented in Haskell.
- There are many applications (especially in the Linux world) built with GTK.

Cons:
- The GTK toolkit is unknown to both authors.