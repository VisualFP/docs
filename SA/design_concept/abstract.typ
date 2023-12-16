= Abstract
All popular visual tools used to introduce children & young adults to the world of programming are made for imperative programming.
There are some visual tools for functional programming, but they lack in visual aesthetics or hide important concepts that are vital to understanding the functional programming paradigm.

To remedy that, a visual, block-based tool for functional programming should be designed.
The focus of the project lies on finding a visual design of such a tool and then prove its feasibility in a proof of concept application.

Before creating a visual design, existing visual programming tools are examined for their advantages & disadvantages.
The used design process consists of two iterations.
The first iterations proposed three visual designs, based on the researched tools.
The iteration is concluded with a survey, receiving feedback on the created designs.
Using this feedback, a fourth design is created and then implemented in a PoC.

The created design concept covers function composition.
With this concept, the function construction is guided by type holes, which indicate what type a value block needs to have, so that the function definition is valid.
In the PoC, an inference engine is created, to dynamically determine the type of undefined parts of a function.
The UI of the PoC is implemented using Electron.js & Haskell and allows a user to construct a generically typed function.

The PoC proves that the proposed concept for function composition works as envisioned.
However, the concept leaves the construction of custom data types open.
To create a visual tool that can be used in a classroom, it is recommended to conduct an additional project that finds a visual design for data type construction.
In addition, it is recommended to switch to a different UI framework that fully supports FRP and doesn't require a web server.

Keywords: Haskell, Functional Programming, Visual Programming

#pagebreak()