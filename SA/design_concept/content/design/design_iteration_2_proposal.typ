#import "../../../style.typ": *
#let load-drawio-svg(path, ..args) = image.decode(read(path).replace("Text is not SVG - cannot display", ""), ..args)

= Final Design Proposal <design-proposal-2>

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
  only lambda expressions. An example of that can be seen in @mehta-proposal-lambda.],
  align(center + horizon)[
    #figure(
      load-drawio-svg("../../static/mehta-proposal-lambda.svg", width: 70%),
      caption: [Proposal 2 - lambda],)<mehta-proposal-lambda>
  ]
)

Regarding the re-use of expressions, the idea is to define multiple small
functions and then stick them together rather than providing a
`let ... in ...`-like expression to declare re-usable values.

A strong inference engine would be running in the background, which powers
the resolution of type holes and type-checking of the program.

#include_section("design_concept/content/design/design_iteration_2_decisions_application.typ", heading_increase: 2)
#include_section("design_concept/content/design/design_iteration_2_decisions_sum_type_destruction.typ", heading_increase: 2)