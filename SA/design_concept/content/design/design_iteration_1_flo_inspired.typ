= Flo-inspired design <flo-inspired-design>
This design proposal for the composition of functions in a functional manner is inspired by flo (see @flo).
With this design, function elements are distributed on a canvas.
Every element (e.g., a variable or function) can be connected to another element with arrows.

== Function Parameter Editor
Parameters of a function are defined separately from the function body.
A dialog, as depicted in @flo_inspired_param_editor, appears next to the editor canvas when opening a function with the editor.
#figure(
    image("../../static/flo_inspired_parameter_editor.png", width: 40%),
    caption: "Draft of proposed function parameter editor"
)<flo_inspired_param_editor>
Users can add and name a parameter by clicking the plus sign. By clicking on the minus sign, a parameter can be removed again.
The user can drag a parameter from the parameter editor onto the function editor canvas to use a parameter in the function body.

== Function Editor
To define a function, the user can drag pre-defined functions, block elements, and self-defined functions from a sidebar onto the editor canvas.
As described above, the same can be done with function parameters from the parameter editor.
To connect a parameter to a function call, the user can create a connector-arrow between them.
This is achieved by clicking on the parameter while holding Ctrl and then clicking on the function parameter slot.

To visually display currying, every function block has only one or no parameter.
If a function has more than one parameter, the function block has dependent blocks for every additional parameter.
The ":apply" suffix to the function's name recognizes such depending blocks.
The last block of a function is the value returned by the function.
This value can be used as a parameter for another function or marked as the function's return value.

The types of a function or variable block can be viewed by hovering over it.

An example of a simple function definition can be seen in @flo_inspired_addition, a visual representation of the addition code scenario defined in @design_eval_code_scenarios.

#figure(
    image("../../static/flo-inspired-addition.png", width: 50%),
    caption: "Example of flow-inspired function definition for an addition function"
)<flo_inspired_addition>

Functions can, of course, also be used as parameters themselves.
For that, the user can create a connector arrow between a function block and a function parameter slot in the same way as with function parameters.
When using functions as parameters, it is possible to leave some function parameters unapplied.
Like this, a function parameter can be filled by the function it's used in.

An example of that can be seen in @flo_inspired_mapAddFive, which is a visual representation of the "Map Add 5" code scenario in @design_eval_code_scenarios.
The fill-color of the parameter slot recognizes the auto-filled parameter of the "(+)" function.
#figure(
    image("../../static/flo-inspired-mapAdd5.png", width: 60%),
    caption: "Example of functions used as parameters for other functions"
)<flo_inspired_mapAddFive>

Pattern-matching is a handy feature of Haskell.
To support that in VisualFP, there is a pre-defined match block that has match cases for typical scenarios (e.g. empty list and head-tail pattern).
The match block has connector-slots for each match-case to which the user can connect the definition of the case behavior.

Another essential concept in any language is recursion.
To create the recursive behavior, the user can drag the function they are defining from the sidebar onto the function editor canvas and use it as any other function.

@flo_inspired_product, a visual representation of the product code scenario defined in @design_eval_code_scenarios, shows how a recursive function definition using pattern-matching could look like.

#figure(
    image("../../static/flo-inspired-product.png"),
    caption: "Example of a flow-inspired recursive function"
)<flo_inspired_product>