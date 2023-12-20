#import "@preview/tablex:0.0.5": tablex, cellx
#import "../../../acronyms.typ": *

= Requirement Validation <requirement_validation>
@functional_requirements and @non_functional_requirements defined 9 use cases and 2 #ac("NFR")s.

@requirement_validation_table shows which of these requirements were fulfilled during the project and which are still open.

#let validation_header(title) = cellx(align: center + horizon)[*#title*]
#let validation_result(id, requirement, result, level) = (
  cellx(id),
  cellx(requirement),
  cellx(fill: level, result),
)
#let lightgreen = rgb(119, 221, 119)
#let lightyellow = rgb(255, 250, 160)
#let lightred = rgb(250, 160, 160)

#show figure: set block(breakable: true)
#figure(
  tablex(
    columns: (auto, 2fr, 2fr),
    validation_header("ID"), validation_header("Requirement"), validation_header("Result"),

    ..validation_result("UC1", "Simple Function Composition", "Achieved in PoC", lightgreen),

    ..validation_result("UC2", "Function Execution", "This requirement is considered as out-of-scope for this project.", lightred),

    ..validation_result("UC3", "Recursive Function Composition", "Achieved in PoC", lightgreen),

    ..validation_result("UC4", "Function Composition using Higher-Order Functions", "Achieved in PoC", lightgreen),

    ..validation_result("UC5", "Curried Functions", "Achieved in PoC", lightgreen),

    ..validation_result("UC6", "Function Composition using Lists", "Achieved in PoC", lightgreen),

    ..validation_result("UC7", "Data Type Composition", "This requirement is considered as out-of-scope for this project.", lightred),

    ..validation_result("UC8", "Save Source File", "This requirement is considered as out-of-scope for this project.", lightred),

    ..validation_result("UC9", "Open Source File", "This requirement is considered as out-of-scope for this project.", lightred),

    ..validation_result("NFR1", "Platform Compatibility", "The PoC application can be executed on all target platforms. The app's compatibility could be improved by switching to a GHCJS-based UI technology.", lightgreen),

    ..validation_result("NFR2", "Learnability", [This requirement was achieved with some notes. A more detailed explanation can be found in @validation-nfr2], lightgreen)
  ),
  supplement: "Table",
  kind: "table",
  caption: "Requirement verification"
) <requirement_validation_table>

The project's main focus was to create a visual concept for function composition and prove that it is feasible with a #ac("PoC") application.
As can be seen in @requirement_validation_table, all requirements related to function composition have been achieved.

Due to time constraints, the requirements UC2, UC7, UC8 and UC9 had to be considered as out-of-scope.
However, during the implementation of the type inference engine, UC7 was kept in mind so that custom data types could be added without much effort.

=== Validation of NFR2 <validation-nfr2>

The non-functional requirement NFR2, as described in @nfr2, states that a user
that isn't familiar with functional programming should be able to use VisualFP
within 1 hour.

This requirement was validated by showcasing the #ac("PoC") to Samuel Bernhard, a
software engineer at Hamilton Bonaduz AG. Samuel is a seasoned software
developer but isn't familiar with functional programming.

He was able to use VisualFP within 1 hour, so we deem the requirement to be
achieved.

Still, the trial pointed out some aspects that are worth to be noted for future
development on the project:

- As he wasn't familiar with the function notation used by Haskell, he wasn't
  able to make use of type hints (type-holes, function signatures, etc) without
  additional explanation.

- He also wasn't familiar with the `cons` and `nil` construction of lists,
  additional explanation was necessary before he could use it.

- He would have liked to execute his created values.

- After the showcase, the envisioned outlooks were presented to him. He liked
  the option of the visual and textual language (@outlook-visual-textual) very
  much.

These shortcomings could be fixed by adding a getting-started tour for beginners, which would explain the different UI components, provide a tutorial for value construction, and explain Haskell's function type notation.
In addition, block values provided by VisualFP could feature a brief description.
