= Haskell function-notation inspired design <haskell-function-notation-inspired-design>

The Haskell function-notation inspired design takes the notation of
functions in Haskell and converts the explicit and implicit parenthesis into
blocks. The mapping from argument to value through an arrow remains the
same. A simple addition definition can be seen in
@haskell_funcnot_inspired_addition.

#figure(
    image("../../static/haskell_function_notation_inspired_addition.png", width: 27%),
    caption: "Example of haskell function-notation inspired function definition"
)<haskell_funcnot_inspired_addition>

In order to bring more clarity to the definition, the blocks and values are
annotated with their type.

#figure(
    image("../../static/haskell_function_notation_inspired_mapAdd5.png", width: 50%),
    caption: "Example of haskell function-notation inspired function definition with higher order function"
)<haskell_funcnot_inspired_mapAdd5>

The handling of type arguments is not yet defined, although a similar solution
as for the scratch-inspired design, described in @scratch-inspired-design, could
be used.
