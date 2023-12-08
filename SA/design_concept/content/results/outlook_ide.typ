= IDE for visual functional programming
In a future project, VisualFP could be further enhanced to work like an IDE.
Besides the functionality that already exists in the PoC application, this would require:
- An editor for custom types
- A way to organize defined functions & types
- Possibility to save & open defined functions & types
- Mean to execute functions
- Haskell compatibility

@visualfp_ide_mockup shows a mockup of how the VisualFP IDE could look like.
The two main elements are the sidebar, which gives the user access to pre- and self-defined functions, and the large editor-section containing the visual editor.
In addition to the visual editor for functions presented in the PoC, a fully functional IDE version would also need a visual concept to represent custom data types and an editor to build them.

In an IDE, the user could create a new VisualFP project, which works as a cabal project.
The user has the possibility to create their own modules and to import modules from the prelude or external packages.
Modules are displayed as folders in the IDE sidebar, with the module's functions as child elements.

#figure(
    image("../../static/visualfp_ide_mockup.png"),
    caption: "Mockup of VisualFP IDE"
)<visualfp_ide_mockup>

Ideally the IDE also provides debugging tools, so users can understand their code better and find bugs easier.
An integration with e.g. the Haskell Substitution Stepper #footnote("https://eprints.ost.ch/id/eprint/991/") could be useful.
