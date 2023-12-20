= Scratch-inspired design <scratch-inspired-design>

The proposal of the scratch-inspired design takes scratch's imperative block
style and converts it into the context of an expressional and declarative
setup.

Functions, variables, parameters, etc., are portrayed as colorful blocks that
can be dragged on top of each other.

== Function Declaration, Composition and Application

Function declarations are displayed as red blocks with light-blue
parameters below them, and the main expression above it, as shown in
@scratch_inspired_addition.

#figure(
    image("../../static/scratch-inspired-addition.svg", width: 30%),
    caption: "Example of scratch-inspired function definition for an addition function"
)<scratch_inspired_addition>

Functions used in expressions are displayed as green blocks and can be
applied to by inserting blocks to the parameters declared above them. Their
name is shown inside the block, whereas the alignment of the name (left,
center, right) doesn't bear any semantic meaning.

== Type Holes

If a parameter is left unapplied, a type hole is shown instead as a violet
block with the expected value type as its name. Such a type hole can
be seen in @scratch_inspired_type_hole.

#figure(
    image("../../static/scratch-inspired-mapAdd5.svg", width: 25%),
    caption: "Example of scratch-inspired function definition with a type hole"
)<scratch_inspired_type_hole>

In @scratch_inspired_type_hole, the second parameter of the `(+)` function
is left unapplied, and thus, a type hole of type `Int` is shown.

== Pattern Matching

Pattern matching is provided as a dedicated block that takes a value as a
parameter and has the list of possible patterns as its pre-applied arguments.
These cases then offer the matched patterns as values and can be supplied
with blocks to specify the expression to be evaluated. An example of such a
function can be seen in @scratch_inspired_product.

#figure(
    image("../../static/scratch-inspired-product.svg", width: 50%),
    caption: "Example of scratch-inspired function definition with pattern matching"
)<scratch_inspired_product>

