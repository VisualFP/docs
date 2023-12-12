#import "../../../acronyms.typ": ac

= UI Framework Decision <option-ui-decision>

All technologies to implement UIs in a functional language are unfamiliar to
the authors.

Because of that, it is crucial to have a good abstraction between UI and
business logic in place so that the UI framework, if necessary, can be exchanged with another
option with as little effort as possible.

#ac("FRP") is an excellent concept for incorporating UI behavior and events into
functional programming.  Of the frameworks considered, only threepenny-gui
includes a library that supports #ac("FRP").  Despite not following the
#ac("FRP") concepts, Bolero also supports reactive handling of UI contents.

Since the project intends to create a tool for visual programming in Haskell, it
also makes sense to implement the UI of VisualFP in Haskell. For that reason,
Threepenny will be used for the PoC.

As already mentioned in @ghcjs, using GHCJS as Haskell compiler that targets
JavaScript would enable other interesting possibilities but has been deemed too
time-intensive for the time-restricted #ac("PoC").
