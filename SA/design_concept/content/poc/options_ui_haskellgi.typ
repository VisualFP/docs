#import "../../../acronyms.typ": ac

= Haskell-gi

#ac("GTK") is a widget toolkit that allows the creation of #ac("UI")s that work on
many popular operating systems.  GTK widgets can be created programmatically or
with an XML #ac("UI") definition. @gtk_project

Haskell-gi is a Haskell library that offers bindings to GTK. The library allows
widget creation in a rather imperative style.

There also is a library that supports widget creation in a functional style
called 'gi-gtk-declarative'
#footnote("https://github.com/owickstrom/gi-gtk-declarative"), but that library
is still experimental. @haskell_gi

Using Haskell-gi to create the #ac("UI") of VisualFP would allow the frontend and
backend logic to be implemented in Haskell.

The downside to Haskell-gi is that #ac("GTK") is unknown to both authors and it
doesn't seem to be used as much as web-based frameworks, which could impact the
availability of documentation and examples.
