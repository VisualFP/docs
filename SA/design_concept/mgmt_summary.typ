= Management Summary

== Initial Situation

Many teachers use tools like Scratch or LEGO Mindstorms when introducing
children and young adults to the programming world. Such visual, block-based
tools eliminate the hurdle of code syntax, allowing beginners to concentrate on
the program they want to write.

However, almost all visual tools for teaching programming are made for the imperative
programming paradigm.  Visual tools exist for functional programming, but either lack
a good user experience or hide essential concepts required to understand functional
programming.

== Objective

With VisualFP, a visual, block-based tool should be designed that can be used to
teach functional programming. At the center of this project is a design concept
for visual function composition, describing how the visual editor of such a tool
would work. A proof of concept application with a visual function editor should
be created to prove the concept is feasible.

A potent type inference engine is necessary for such an editor to work,
which shall be implemented using a unification algorithm as proposed by Simon
Peyton Jones @spj-ghc-inference. An overview of a unification-based engine
is shown in @management-summary-inference-engine.

#figure(
  image("./static/inference-engine.svg", width: 65%),
  caption: [Type-inference engine components])  <management-summary-inference-engine>

Additionally, the application should run on the user's machine so that it can
be used in classrooms without server infrastructure.

== Results

The developed concept uses nested blocks to represent function definitions. Type
holes guide the development flow as typed placeholders for missing pieces of a value definition. Users can drop value blocks into a type hole to
fill it with that value. Value blocks are provided by the editor or are defined
by the user.

The concept was implemented in a proof of concept application written using
Haskell and Electron.js. A component-level view of the application is provided
in @management-summary-component-diagram.

#figure(
  image("./static/component_diagram.svg", width: 100%),
  caption: "C4 Component Diagram for VisualFP PoC"
) <management-summary-component-diagram>

The application includes a small selection of
pre-defined values that can be used to build a user-defined function. A
screenshot of the application is provided in @managmenet-summary-screenshot. 

#figure(
  box(stroke: 2pt, image("./static/management-summary-screenshot.png", width: 80%)),
  caption: "Screenshot of the mapAdd5 function definition in VisualFP"
) <managmenet-summary-screenshot>

The implemented application proves that the developed design concept works as
envisioned.  However, the application is not yet ready to be used in classrooms
as additional design and development is required to bring the idea to its full
potential.

#pagebreak()