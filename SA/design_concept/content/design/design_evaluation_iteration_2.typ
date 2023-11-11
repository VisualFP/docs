#import "../../../style.typ": *
#let load-drawio-svg(path, ..args) = image.decode(read(path).replace("Text is not SVG - cannot display", ""), ..args)

= Second Iteration

After the inital propols received mixed feedback in the questionnaire, our
advisor Prof. Dr. Farhad d. Mehta, suggested an additional design which
combines some aspects of the previous proposals and adds some new ideas. 

#grid(
  columns: (2fr, 1.4fr),
  column-gutter: 5pt,
  [The basic structure consists of nested blocks, each represent a different
  expressions. In that regard it is similar to the scratch inspired design
  as described in @scratch_inspired_design, with the difference that the
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
  [Another similarity to the scratch inspired design is the use of
  type-holes for parameters that are not yet supplied. In such a case, a
  special block is shown which contains nothing but the type of the
  parameter, as can be seen in @mehta-proposal-type-hole.],
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
  pattern-matching, list-comprehension, etc., the idea is to do scoping using
  only lambda expressions. An example can be seen in @mehta-proposal-lambda.],
  align(center + horizon)[
    #figure(
      load-drawio-svg("../../static/mehta-proposal-lambda.svg", width: 70%),
      caption: [Proposal 2 - lambda],)<mehta-proposal-lambda>
  ]
)

The proposal leaves two decisions open for further exploration:

1. #[For sum types, how should pattern matching be done?

   - #[One approach is to generate a special function per sum type, which
     takes a function parameter for each constructor of the sum type. These
     functions would then map the arguments of the constructors to a common
     result type.

     For example, if a sum type `List a` has two type constructors
     `Cons: a -> List a -> List a` and `Nil: List a`, then the matching
     function would have the signature `List a -> (a -> List a -> b) -> b -> b`.]

   - #[The other approach would be to add 'sugar' to the system as, for
     example, Haskell does using the pattern maching syntax.

     Such a system would provide a special expression type `match`, which
     automatically generates the matching function for the given sum type.
     This would come with the burder of having to offer scopes with multiple
     exclusive values from the destructed object.]
   ]

2. #[How should application be done?

   - #[A simple type of application is to do it explicitly, as the
     Lambda Calculus suggests. Translated to a block-based visual tool, this
     means that a user would have to drag a dedicated expression block to
     apply a value to another.

     The advantage of this approach is that it is more explicit about it's
     intention. This may lead to it being easier to understand for
     beginners, and easier to implement for VisualFP.]

   - #[Another approach is to bake knowledge about function application
     right into the visual language, which would allow to offer a more
     elaborated application experience. For example, the system could take
     curried functions apart until the value matches the inferred target
     value, offering all intermediate parameters as type-holes.

     This approach would be more restrictive than explicit application, with
     the advantage of being more concise. It would also make use of
     type-holes more often, which may offer stronger guidance to beginners.]
  ]

Regarding the re-use of expressions, the idea is to define multiple small
functions and then stick them together, rather than providing a `let ... in
...`-like expression type to delcare re-usable values.

A strong inferrence engine would be running in the background, which powers
the resolution of type holes and type-checking of the program.
