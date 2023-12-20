#import "../../../style.typ": *
#let load-drawio-svg(path, ..args) = image.decode(read(path).replace("Text is not SVG - cannot display", ""), ..args)

= Second Design Proposal <design-proposal-2>

#grid(
  columns: (2fr, 1.4fr),
  column-gutter: 5pt,
  [The basic structure consists of nested blocks, each representing a different
  expression. In that regard, it is similar to the scratch-inspired design
  as described in @scratch-inspired-design, with the difference that the
  blocks are completely enclosing their children, as can be seen in
  @mehta-proposal-basic-structure.],
  align(center + horizon)[
    #figure(
      load-drawio-svg("../../static/mehta-proposal-basic-structure.svg"),
      caption: [Proposal 2 - basic structure],)<mehta-proposal-basic-structure>
  ]
)

#grid(
  columns: (2fr, 1.3fr),
  column-gutter: 5pt,
  [Another similarity to the scratch-inspired design is the use of
  type holes for parameters that are not yet supplied. In such a case, a
  placeholder with nothing but the type of the parameter is shown, as can be
  seen in @mehta-proposal-type-hole.],
  align(center + horizon)[
    #figure(
      load-drawio-svg("../../static/mehta-proposal-type-hole.svg", width: 50%),
      caption: [Proposal 2 - type hole],)<mehta-proposal-type-hole>
  ]
)


#grid(
  columns: (2fr, 1.3fr),
  column-gutter: 5pt,
  [The main difference to the previous proposals is how scoping is solved:
  Instead of providing specialized expressions for constructs such as
  pattern matching, list comprehension, etc., the idea is to do scoping using
  only basic structures of functional programming such as lambda
  expressions. An example of that can be seen in @mehta-proposal-lambda.],
  align(center + horizon)[
    #figure(
      load-drawio-svg("../../static/mehta-proposal-lambda.svg", width: 70%),
      caption: [Proposal 2 - lambda],)<mehta-proposal-lambda>
  ]
)

The proposal leaves two decisions open for further exploration:

1. For sum types, how should pattern matching be done? \
   The available approaches have been described, and the decision has been made
   in @sum-type-destruction-decision.

2. How should application be done? \
   There are also multiple approaches to this decision. They have been
   described in @application-decision.

Regarding the re-use of expressions, the idea is to define multiple small
functions and then stick them together rather than providing a
`let ... in ...`-like expression to declare re-usable values.
