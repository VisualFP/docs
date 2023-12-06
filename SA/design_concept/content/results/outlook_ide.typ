= IDE for visual functional programming
In a future project, VisualFP could be further enhanced to work like an IDE.
Besides the functionality that already exists in the PoC application, this would require:
- An editor for custom types
- A way to organize defined functions & types
- Possibility to save & open defined functions & types
- Mean to execute functions
- Haskell compatibility

@visualfp_ide_mockup shows a mockup of how the VisualFP IDE could look like.
The two main elements are the sidebar, which gives the user access to pre- and self-defined functions, and the large editor-section, where functions & data types can be defined visually.

Functions in the sidebar are grouped into modules (analogous to Haskell modules), which appear like folders in the IDE.
The user has the possibility to create their own modules and to import modules from the prelude or external packages.

#figure(
    image("../../static/visualfp_ide_mockup.png"),
    caption: "Mockup of VisualFP IDE"
)<visualfp_ide_mockup>

Importing external packages requires VisualFP to be compatible with Haskell.
For the type inference to work, a future project would need to find a way to get the type signature of Haskell functions and convert it to VisualFP's type model.

Regarding code execution it is possible to convert VisualFP's value definition to Haskell.
The conversion of the value definition to Haskell code, with the currently supported language features, is relatively easy and already implemented in the PoC feature "View Haskell Code".

As entrypoint for the execution, the IDE can require the user to define a main function, providing a "Run" button to execute the function.
When the execution is triggered, the IDE converts the value definitions to Haskell code and saves them in Haskell files, grouped by module.
Then, the IDE generates a cabal file for the project.
Finally, the cabal project is executed and the result displayed to the user.

To support function execution with custom data types, the IDE would need to provide definitions for the generated destructor functions (see @sum_type_destruction) to the cabal project.
