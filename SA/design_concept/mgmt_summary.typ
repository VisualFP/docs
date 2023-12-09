= Management Summary
// TODO: finalize

When introducing children and young adults to the world of programming, many teachers use tools like Scratch or LEGO Mindstorms.
Such visual, block-based tools eliminate the hurdle of code syntax, allowing beginners to concentrate on the program they want to write.
However, all popular visual tools used for teaching children are made for imperative programming.
There exist visual tools for functional programming, but they lack in visual aestethics or hide important concepts that are imperative for understanding the functional programming paradigm.

With VisualFP, a visual, block-based tool should be designed that can be used to teach functional programming.
At the center of this project is a design concept for visual function composition, describing how the visual editor of such a tool should work.
To proof that the theoretical concept is feasable, a proof of concept application with a visual function editor should be created.

To find a suitable design for the function editor, two design iterations were carried out.
After creating 3 initial design proposals during the first iteration, a small survey with experienced developers & students was conducted to gain insight into the advantages & disadvantages of each design.
Based on this feedback a fourth, more detailed, design concept was created.

This concepts uses nested blocks to represent function definitions.
At the center of the concept are type holes whose type is determined automatically based on the already defined parts of a function.
Like this the editor guides the user during function composition allowing them to concentrate on the function values they want to use.
The user can select values, which are provided by the editor or defined by the user, that match the type shown in the type hole and fill the hole with that value.

The concept was implemented in a proof-of-concept application, which was written using Haskell and Electron.js.
The application includes a small selection of pre-defined values that can be used in the function editor to build a user-defined function.

#figure(
  image("./static/visualFP_mapAdd5.png", width: 18cm),
  caption: "Screenshot of the mapAdd5 function definition in VisualFP"
)

The implemented application proofs that the developed design concept for the function editor works as envisioned.
However, the application is not yet ready to be used for teaching.
For that, an additional project would have to be carried out that creates a visual editor for custom data types and allows the execution of defined functions.

#pagebreak()