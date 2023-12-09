= Management Summary
// TODO: finalize

When introducing children and young adults to the world of programming, many teachers use tools like Scratch or LEGO Mindstorms.
Such visual, block-based tools eliminate the hurdle of code syntax, allowing beginners to concentrate on the program they want to write.

However, all popular visual tools used for teaching programming are made for imperative programming.
There exist visual tools for functional programming, but they lack in visual aesthetics or hide important concepts that are vital to understanding the functional programming paradigm.

With VisualFP, a visual, block-based tool should be designed that can be used to teach functional programming.
At the center of this project is a design concept for visual function composition, describing how the visual editor of such a tool should work.
To proof that the theoretical concept is feasable, a proof of concept application with a visual function editor should be created.

To find a suitable design for the function editor, two design iterations were carried out.
After creating 3 initial design proposals during the first iteration, a small survey with experienced developers & students was conducted to gain insight into the advantages & disadvantages of each design.
Based on this feedback, a fourth, more detailed design concept was created.

This concept uses nested blocks to represent function definitions.
The development flow is guided by type holes, which are typed placeholders for the values required for the definition to be valid.
To complete the definition, users can drop value blocks into a type hole and fill it with that value.
Value bocks are provided by the editor or defined by the user.

The concept was implemented in a proof-of-concept application, which was written using Haskell and Electron.js.
The application includes a small selection of pre-defined values that can be used in the function editor to build a user-defined function.

#figure(
  image("./static/visualFP_mapAdd5.png", width: 18cm),
  caption: "Screenshot of the mapAdd5 function definition in VisualFP"
)

The implemented application proofs that the developed design concept for the function editor works as envisioned.
However, the application is not yet ready to be used in classrooms.
Additional design and development is required in order to bring the concept to its full potential.

#pagebreak()