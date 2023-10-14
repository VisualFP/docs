= Flo-inspired design
This design proposal for the composition of functions in a functional manner is inspired by flo (see @flo).
With this design, function elements are distributed on a canvas.
Every element (e.g. a variable or another function) can be connected to another element with arrows.

== Function Parameter Editor
Parameters of a function are defined seperately from the function body.
When opening a function with the editor, a dialog, as depicted in @flo_inspired_param_editor, appears next to the editor canvas.
#figure(
    image("../../static/flo_inspired_parameter_editor.png", width: 40%),
    caption: "Draft of proposed function parameter editor"
)<flo_inspired_param_editor>
By clicking on the plus sign, a user can add a parameter and name it. By clicking on the minus sign, a parameter can be removed again.
To use a prameter in the function body, the user can simply drag it from the prameter editor onto the function editor canvas.

== Function Editor
To define a function, the user can drag pre-defined functions and block elements as well as self-defined functions from a sidebar onto the editor canvas.
As described above, the same can be done with function parameters from the parameter editor.
To connect a parameter to a function call, the user can create a connector-arrow berween them.
This can be achieved by Ctrl+Click on the parameter and then click on the function parameter slot.

To visually display currying, every function block is only allowed to have one or no parameter.
If a function has more than one parameter, the function block has depending blocks for every additional parameter.
Such depending blocks can be recognized by the ":apply" suffix to the function's name.
The last block of a function is the value return by the function.
This value can be used as a parameter for another function or marked as the return value of the function.

The types of a function or variable block can be viewed by hovering over it.

An example of a simple function definition can be seen in @flo_inspired_addition, which is a visual representation of the addition code scenario defined in @design_eval_code_scenarios.

#figure(
    image("../../static/flo-inspired-addition.png", width: 50%),
    caption: "Example of flow-inspired function definition for addition function"
)<flo_inspired_addition>

Functions themselves can of course also be used as parameters themselves.
For that, the use can create a connector-arrow between the main function block (not one of the depending ones) and a function parameter slot in the same ways as with function parameters.
When using functions as parameters, it is possible to auto-fill some of the functions parameters.
That means that a parameter of a function is automatically filled by the function that it's used in.

An example for that can be seen in @flo_inspired_mapAddFive, which is a visual representation of the "Map Add 5" code scenario in @design_eval_code_scenarios.
The auto-filled parameter of the "(+)" function can be recognized by the fill-color of the parameter slot.
#figure(
    image("../../static/flo-inspired-mapAdd5.png", width: 60%),
    caption: "Example of functions used as parameters for other functions"
)<flo_inspired_mapAddFive>

Another important concept is recursion.
In Haskell, recursive functions are often defined with pattern matching.
To support that, there is a pre-defined match block that has match cases for typical scenarios (e.g. empty list and head-tail pattern).
The match block has connector-slots for each match-case to which the user can connect the definition of the case behavior.
To create the recursive behaviour, the user can simply drag the function they are defining from the sidebar onto the function editor canvas and use it as any other function.

@flo_inspired_product, which is a visual representation of the product code scenario defined in @design_eval_code_scenarios, shows how a recursive function definition could look like.

#figure(
    image("../../static/flo-inspired-product.png"),
    caption: "Example of a flow-inspired recursive function"
)<flo_inspired_product>