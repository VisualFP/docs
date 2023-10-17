= flo <flo>

flo is a visual and functional programming language. It features a programming
environment based on blocks connected using cables, as shown in
@flo_screenshot_1. The corresponding compiler converts the visual
arrangements and connections into Haskell code.

#figure(
  image("../../../static/flo_screenshot_1.png", width: 50%),
  caption: [Screenshot of an if function definition in flo @flo-manual]) <flo_screenshot_1>

A block's parameters and outputs are represented by sockets, which can be
connected to compatible sockets through click-and-drag. The compiler can infer
the sockets' types and reject incompatible connections.

A specialty of flo is that blocks do not just represent values but also types.
A type block is either a basic type, such as `Int` or `Bool`, or a constructor
to a complex type with type parameters, represented through sockets. An
example of a type being used as type parameter is shown in @flo_screenshot_2.

#figure(
  image("../../../static/flo_screenshot_2.png", width: 30%),
  caption: [Screenshot of a negation function application in flo @flo-manual]) <flo_screenshot_2>

flo has been a research project and has not been actively developed since 2016.
Out of all researched tools, it is probably the one that comes closest to
VisualFP in terms of its goals.

