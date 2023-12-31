= Sum Type Destruction <sum-type-destruction-decision>
#let load-drawio-svg(path, ..args) = image.decode(read(path).replace("Text is not SVG - cannot display", ""), ..args)

Sum types consist of a set of constructors, each with a different type. The type
of a sum type is the union of the types of its constructors.

To work with a value of a sum type, it must be possible to destruct
the value into its constructor and arguments. Since while developing one
usually cannot know which constructor was used to create a value, all possible
constructors must be handled. 

A common approach in functional languages is to use _pattern matching_.
Pattern matching allows to match values against a set of patterns and
execute user-provided code per pattern. Each code path needs to have the same
return type, which will then be used as the type of the matching
expression. One of the pattern types usually destructs sum type constructors. 

An example of pattern-matching in Haskell can be seen in
@pattern-matching-example-haskell, which defines a sum type named `Expression`
with two constructors, `Value` and `Addition`, and a function `calc`
that pattern matches a value of type `Expression` against its
constructors.

#figure(
    ```hs
    data Expression where
      Value :: Int -> Expression
      Addition :: Expression -> Expression -> Expression

    calc :: Expression -> Int
    calc e = case e of
      Value v -> v
      Addition left right -> calc left + calc right
    ```,
    caption: "Example of pattern-matching in Haskell"
)<pattern-matching-example-haskell>

An easier way to implement sum type destruction is to generate a function that
takes a function parameter per constructor of the sum type. These
parameter functions take the type constructor arguments as input
parameters and map them to a common output type. These kinds of functions are called
destruction functions. @destruction-function-example-haskell shows what such a
destruction function would look like for the abovementioned example.


#figure(
    ```hs
    data Expression where
      Value :: Int -> Expression
      Addition :: Expression -> Expression -> Expression

    destruct :: Expression -> (Int -> b) -> (Expression -> Expression -> b) -> b
    destruct = -- implementation omitted

    calc :: Expression -> Int
    calc e = destruct e (\x -> x) (\l r -> calc l + calc r)
    ```,
    caption: "Example of a destruction function in Haskell"
)<destruction-function-example-haskell>

Unfortunately, such a destruction function is not as powerful as
pattern-matching in a few ways:

- It is not possible to specify multiple overlapping patterns, which are
  matched against in order of definition.
- It is not possible to combine patterns into more complex patterns.
- It is not possible to specify a default case.

This list is not exhaustive, but it already shows how the lack of
pattern-matching would make the import of Haskell code into VisualFP more
difficult.

How pattern-matching and destruction functions would look in VisualFP can be seen in
@pattern-matching-example-visualfp and
@destruction-function-example-visualfp.

#figure(
  load-drawio-svg("../../static/design_specification_destruction.svg", width: 100%),
  caption: [Example of a destruction function in VisualFP])<pattern-matching-example-visualfp>
#figure(
  load-drawio-svg("../../static/design_specification_pattern-matching.svg", width: 80%),
  caption: [Example of pattern-matching in VisualFP])<destruction-function-example-visualfp>

The decision was made in favor of the destruction function since the
pattern-matching approach does not translate as well into an exclusively
visual language. The fact that it makes the import of Haskell code more
difficult is unfortunate but acceptable since the primary goal of VisualFP
is to be a visual language to introduce beginners to functional programming.

