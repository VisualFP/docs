#import "../../../style.typ": *
#import "@preview/tablex:0.0.6": tablex, hlinex
#let load-drawio-svg(path, ..args) = image.decode(read(path).replace("Text is not SVG - cannot display", ""), ..args)

= Application

In /*TODO: Insert reference after !74 merges */ the suggested concept of
Prof. Dr. Farhad Mehta, the application style was left open as a decision.

The two discussed options were:

/ Explicit: Leave higher-order function values as such and apply them
  explicitly using a dedicated application function.

/ Elaborate: #[Embedd a more deeper understanding of application into the
  language, which allows to resolve nested curried function values to
  their arguments if necessary.]

A side-by-side comparison of how double application of two `5` literals to
an `addition` function would look like in both styles can be seen in
@elaborate_application and @explicit_application.

#columns(2)[
#figure(
  load-drawio-svg("../../static/design_specification_application_elaborate.svg", width: 70%),
  caption: [Elaborate application])<elaborate_application>
#colbreak()
#figure(load-drawio-svg("../../static/design_specification_application_explicit.svg"),
  caption: [Explicit application])<explicit_application>
]

Of these two styles, the elaborate application style was chosen over
explicit application, since the elaborate style stays readable when scaling
up to bigger examples, while the explicit style starts to feel overloaded.

The type-resolution for the elaborate application style works like this:

1. A type-hole of a value $A_1 arrow.r ... arrow.r A_n$ is encountered.
2. A value of type
   $B_1 arrow.r ... arrow.r B_n arrow.r A_1 arrow.r ... arrow.r A_n$
   is inserted into the type-hole,
3. #[The editor resolves the curried function into it's nested values and
   matches the ending values $A_1 arrow.r ... arrow.r A_n$ with the expected
   type of the hole. 

   The remaining arguments $B_1 arrow.r ... arrow.r B_n$ are then processed
   as new type holes to be filled in.]

An example of the elaborate application system can be seen in
@elaborate_application_example.

#figure(
  tablex(
    auto-lines: false,
    columns: (auto, auto, auto),
    [Type hole], [Inserted Value], [Result], hlinex(stroke: 0.5pt),
    $A arrow.r A$, $A$, [_error_], hlinex(stroke: 0.5pt),
    $A$, $A arrow.r A$, [_type-hole:_ $A$], hlinex(stroke: 0.5pt),
    $B arrow.r C$, $A arrow.r B arrow.r C$, [_type-hole:_ $A$], hlinex(stroke: 0.5pt),
    $C$, $A arrow.r B arrow.r C$, [_type-holes:_ $A$, $B$],
  ),
  kind: "table",
  supplement: "Table",
  caption: [Examples of elaborate application resolution])<elaborate_application_example>
