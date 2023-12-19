#import "@preview/tablex:0.0.5": tablex, cellx
#import "../../../acronyms.typ": *

= Requirement Validation <requirement_validation>
@functional_requirements and @non_functional_requirements defined 9 use cases and 2 NFRs.

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

    ..validation_result("NFR2", "Learnability", "The complexity in the PoC UI is relatively low. However, this requirements wasn't formally verified.", lightyellow)
  ),
  supplement: "Table",
  kind: "table",
  caption: "Requirement verification"
) <requirement_validation_table>

The main focus of the project was to create a visual concept for function composition and prove that it is feasible with a #ac("PoC") application.
As can be seen in @requirement_validation_table, all requirements related to function composition could be achieved.

Due to time constraints, the requirements UC2, UC7, UC8 and UC9 had to be considered as out-of-scope.
However, during the implementation of the type inference engine, UC7 was kept in mind, so that custom data types could be added without much effort.
