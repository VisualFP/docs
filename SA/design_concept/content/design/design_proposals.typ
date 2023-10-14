#import "../../../style.typ": include_section

= Design Proposals
In the following, all considered designs for function composition as well as the overall tool design are documented.

== Overall tool design
VisualFP should work in an IDE-style. This means that there is a way to organize defined functions, an editor for function composition and means to execute functions.

@visualfp_ide_mockup shows a mockup of how the VisualFP IDE could look like.
The two main elements are the sidebar, which gives the user access to pre- and self-defined functions, and the large editor-section.
The designs proposed later in this section describe how the editor-section of the IDE could work.

Functions in the sidebar can be grouped in modules, which appear like folders in the IDE.

Regarding code execution, there are multiple considered options:
- The defined functions are loaded into an interactive GHCi session where the user can interact with their functions.
- The user needs to define a main function. The project is then executed like any other cabal project.
- The IDE offers a "Try it" functionality, which allows the user to execute a single function with ad-hoc parameters.

#figure(
    image("../../static/visualfp_ide_mockup.png"),
    caption: "Mockup of VisualFP IDE"
)<visualfp_ide_mockup>

== Scratch-based design
TODO: add design description

#include_section("design_concept/content/design/flo_inspired_design.typ", heading_increase: 2)
