= UI
Content: interesting things about the UI (why no FRP)

== Features
The UI for the PoC application includes two main components, which can be seen in @ui-empty-editor: A sidebar with pre-defined value blocks and the function editor.

#figure(
  image("../../static/ui_empty_editor.png"),
  caption: "Undefined function value in the VisualFP UI"
) <ui-empty-editor>

In the PoC the user only has the possibility define one function "userDefinedFunction", which starts with a generic type hole.
Starting with a generic function type allows more flexible testing.
In a full version of the application, the user would be able to define the function name and type, when creating it.

#grid(
  columns: 2,
  gutter: 5pt,
  [#figure(
    image("../../static/ui_editor_drag_lambda.png"),
    caption: "Dragging lambda block into value definition"
  ) <ui-dragging-lambda>],
  [#figure(
    image("../../static/ui_editor_dropped_lambda.png"),
    caption: "Updated function definition including a lambda block"
  ) <ui-dropped-lambda>]
)

To build the value definition, the user can drag a value block from the sidebar into a type hole, as shown in @ui-dragging-lambda.
The drop event then triggers the application to insert the dropped value block into the function definition and infering the types of the new function definition.
@ui-dropped-lambda shows the updated and infered value definition.
This process can be repeated with suiting value blocks until there is no type hole left.

The PoC also offers a reset button, to return to the empty function definition.
The functionality is mainly for testing in the PoC.
In a full version of the application, this would have to be replaced with the possibility to remove specific blocks from the definition.

Finally, the built function definition can be viewed as Haskell code by clicking on the "View Haskell" button.
@ui-view-haskell shows the Haskell code for the mapAdd5 function.

#figure(
  image("../../static/ui_view_haskell.png"),
  caption: "Haskell defintion of mapAdd5 function in VisualFP"
) <ui-view-haskell>

== Implementation
The UI implementation consists of an Electron.js app and the Threepenny UI.
The Electron app is packaged with an executable of the Threepenny UI and all UI related static files, i.e. CSS & JavaScript files.
When starting the Threepenny UI, the Electron app passes a usable port for the local web-server and the file path to the static UI files to the Threepenny UI.

The function editor is the biggest part of the Threepenny UI and consists of two main elements:
- Rendering of function value blocks
- Reacting to value block drop events

The rendering part creates HTML div elements per value definition block and annotates it with CSS classes according to its block type.

Reacting to the value block drop events is a bit more complicated.
The block values in the sidebar of the application carry their value name as data transfer data.
When the user drops a block value into a type hole, the data transfer data is then included in the event.

Unfortunetaly, the drop events cannot be registered when creating the type hole elements in the rendering part.
Doing so, event handlers are never executed.
So, to register the drop event listeners, first all type hole IDs need to be collected.
With these IDs, the HTML elements added to the DOM can be loaded and the event handlers registered.

The drop event handlers do always the same, regardles of the block value that was dropped:
1. Replace the type hole that value was dropped in with the dropped value
2. Infer the updated function definition
3. Clear all elements from the function editor
4. Render the infered function definition

== Functional Reactive Programming
Threepenny includes a FRP library, which follows the concepts described by Conal Elliott and Paul Hudak.
FRP has two main concepts: Events and Behaviors.
An Event is defined as a list of ocurrences in time.
A Behavior represents a value that changes over time.
@frp_elliott_hudak

FRP is not that easy to get into when getting started.
A main source of confusion can come from the usage of the term "Event" for an "Event Stream".
In addition there are very few tutorials for FRP.

While it was first intended to use FRP for the PoC implementation, over time it became clear that Threepenny's FRP library is not yet ready for more complex use-cases like VisualFP's function editor.
The main problem is, that there is no function that allows it to merge multiple events.
Using Threepenny with FRP for VisualFP can be considered, once the FRP library is replaced by reactive-banana #footnote("https://github.com/HeinrichApfelmus/reactive-banana") @threepenny-frp-replacement.

Here is a theoretical description of how the FRP concepts apply to VisualFP.
There are 3 different events:
- The "Reset Editor" button is clicked
- The "View Haskell" button is clicked
- A block value is dropped into a type hole. This event is a combination of all events from every type-hole in the function definition.

The value definition of the user-defined function is a behavior and changes everytime a block value is dropped into the value definition.
Every time the value definition changes, the elements displayed in the function editor need to be updated too.