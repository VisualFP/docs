#import "../../../style.typ": *
#let load-drawio-svg(path, ..args) = image.decode(read(path).replace("Text is not SVG - cannot display", ""), ..args)

= Application

In /*TODO: Insert reference after !74 merges */ the suggested concept of
Prof. Dr. Farhad Mehta, the application style was left open as a decision.

The two discussed options where to:

/ Explicit: Leave higher-order function values as such, and applying them
  explicitly using a dedicated application block.
/ Elaborate: Embedd a more deeper understanding of application into the
  language, which allows to resolve nested higher-order function down to
  it's arguments if necessary.

A side-by-side comparison of the two approaches can be seen in
@elaborate_application and @explicit_application.

#columns(2)[
#figure(
  load-drawio-svg("../../static/design_specification_application_elaborate.svg", width: 70%),
  caption: [Elaborate application])<elaborate_application>
#colbreak()
#figure(load-drawio-svg("../../static/design_specification_application_explicit.svg"),
  caption: [Explicit application])<explicit_application>
]



