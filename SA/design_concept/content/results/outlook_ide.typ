#import "../../../acronyms.typ": *

= IDE for visual functional programming

VisualFP could be further enhanced in a future project into a visual IDE for
Haskell.

Besides the functionality already in the #ac("PoC") application, additional
features offered by Haskell would also need to be implemented visually, such as
an editor for Haskell-type definitions, a way to organize user definitions into
modules, integration with a package manager, etc.

On the other hand, such a development would offer the opportunity to outsource
functionality, such as compilation and execution, to Haskell tooling.
A Haskell compiler could also replace the already-built type-inference engine, and
an integration with, e.g., the Haskell Substitution Stepper
#footnote("https://eprints.ost.ch/id/eprint/991/") could be helpful as well.

@visualfp_ide_mockup shows a mockup of what such an IDE could look like.
The two main elements are the sidebar, which gives the user access to libraries and self-defined functions, and the large editor section containing the visual editor.

#figure(
    image("../../static/visualfp_ide_mockup.png"),
    caption: "Mockup of VisualFP IDE"
)<visualfp_ide_mockup>

If interpreted as a learning tool, the VisualFP IDE would offer a clear learning
path from dragging visual blocks to writing Haskell code.
Learners could first build an understanding of functional concepts visually and
then apply the same understanding to Haskell code.

Haskell programmers could find use in such a tool as well.
Specifically, the debugging tools could offer an advantage over a pure textual development approach.
Visual representation would be equivalent to textual code, so VisualFP could be considered a new tool in the toolbox of seasoned Haskell programmers.

Full compatibility with a typical Haskell project would not be a trivial goal.
A deep integration with #ac("GHC"), Cabal, etc., would be necessary.
It would bind VisualFP exclusively to Haskell, support for other functional languages, such as F\# or Scala, could not be easily added afterward.