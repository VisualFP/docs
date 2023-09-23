= flo

flo is a visual and functional programming language. It features a programming
environment that is based on blocks connected using cables. The corresponding
compiler is able to convert the visual arrangements and connections into
Haskell code.

#figure(
  image("../../static/flo_screenshot_1.png", width: 50%),
  caption: "Screenshot of an if function definition in flo")

A blocks parameters and outputs are represented by 'sockets', which can be
connected to compatible sockets through click-and-drag. The compiler is able to
infer the types of the sockets, and will reject incompatible connections.

#figure(
  image("../../static/flo_screenshot_2.png", width: 30%),
  caption: "Screenshot of a negation function application in flo")

A specialty of flo is that blocks do not just represent values, but also types.
A type block is either a basic type, such as `Int` or `Bool`, or a constructor
to a complex type with type parameters, represented through sockets as well.

flo has been a research project, and has not been developed since 2007. Out of
all researched tools, it is probably the one that comes the most close to
VisualFP in terms of its goals.

