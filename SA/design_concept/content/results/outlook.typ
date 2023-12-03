= Outlook
Content:
- What new questions arise?
- What could the application look like in a complete version?

== Possible IDE-like version
// TODO: rephrase
VisualFP should work in an IDE-style, which means that there is:
- An editor to compose functions
- An editor for custom types
- A way to organize defined functions and types
- Mean to execute functions

@visualfp_ide_mockup shows a mockup of how the VisualFP IDE could look like.
The two main elements are the sidebar, which gives the user access to pre- and self-defined functions, and the large editor-section.
The designs proposed later in this section describe how the function-editor section of the IDE could work.

Functions in the sidebar can be grouped in modules (analogous to Haskell modules), which appear like folders in the IDE.

Regarding code execution, there are multiple considered options:
- The defined content is loaded into an interactive GHCi session which users can interact with.
- The user needs to define a main function. The project is then executed like any other cabal project.
- The IDE offers a "Try it" functionality, which allows the user to execute a single function with ad-hoc parameters.

#figure(
    image("../../static/visualfp_ide_mockup.png"),
    caption: "Mockup of VisualFP IDE"
)<visualfp_ide_mockup>