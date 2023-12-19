#import "../../../acronyms.typ": *

= User Interface <ui>
This chapter describes the features of the #ac("PoC") application #ac("UI"), the high-level implementation, and how functional reactive programming could be applied to VisualFP.

== Features
The #ac("UI") for the #ac("PoC") application includes two main components, as shown in @ui-empty-editor: A sidebar with pre-defined value blocks and the function editor.

#figure(
  image("../../static/ui_empty_editor.png"),
  caption: "Undefined function value in the VisualFP UI"
) <ui-empty-editor>

The #ac("PoC") allows the construction of a value, the "userDefinedFunction", which starts with a generic type hole.
Starting with a generic function type allows more flexible testing.
In a completed application version, the user can define the function name and type when creating it.

#grid(
  columns: (60%, 40%),
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

@ui-dragging-lambda and @ui-dropped-lambda show how a lambda block is inserted into the value definition.
To build the value definition, the user drags the lambda block from the sidebar into the type hole.
The drop event then triggers the application to insert the lambda block into the function definition and infer the types of the new function definition.
This process can be repeated with suiting value blocks until no type hole is left.

As the #ac("PoC") is intended to test the concept, only a reset button exists to return to the initial empty definition.
In a full version, this would be replaced with the possibility to remove specific blocks from the definition.

Finally, the user-built function definitions can be viewed as Haskell code by clicking the "View Haskell" button.
@ui-view-haskell shows the Haskell code for the `mapAdd5` function.

#figure(
  image("../../static/ui_view_haskell.png"),
  caption: "Haskell defintion of mapAdd5 function in VisualFP"
) <ui-view-haskell>

== Implementation
The #ac("UI") implementation consists of an Electron.js app hosting a Threepenny #ac("UI").
The Electron app is packaged with an executable of the Threepenny #ac("UI") and all #ac("UI") related static files, i.e. #ac("CSS") & JavaScript files.
When starting the Threepenny #ac("UI"), the Electron app passes a usable port for the local web server and the file path to the static #ac("UI") files to the Threepenny #ac("UI").

The function editor is the most significant part of the Threepenny #ac("UI") and has two primary responsibilities:
- Rendering of function value blocks
- Reacting to value block drop events

The rendering part creates an #ac("HTML") representation of each block in the value definition block and annotates it with #ac("CSS") classes according to its block type.

Reacting to the drop events is a bit more complicated.
The block values in the application's sidebar carry their names as data transfer data.
When the user drops a block value into a type hole, the data transfer data is included in the event data.

Unfortunately, the drop events cannot be registered when creating the type hole elements in the rendering part.
So, to register the drop event listeners, the IDs of type holes need to be collected upfront.
With these IDs, the #ac("HTML") elements added to the #ac("DOM") can be loaded, and the event handlers registered.

The drop event handlers always do the same, regardless of the block value that was dropped:
1. Replace the type hole with the dropped value
2. Infer the updated function definition
3. Clear all elements from the function editor
4. Render the inferred function definition

== Functional Reactive Programming
Threepenny includes a #ac("FRP") library, which follows the concepts described by Conal Elliott and Paul Hudak.
#ac("FRP") has two main concepts: Events and Behaviors.
An Event is defined as a list of occurrences in time.
A Behavior represents a value that changes over time.
@frp_elliott_hudak

While the first intention was to build the #ac("PoC") with a #ac("FRP") architecture, it became clear over time that Threepenny's #ac("FRP") library is not yet ready for more complex use-cases like VisualFP's function editor.
The main problem is that no function allows it to merge multiple events.
Implementing the #ac("FRP") architecture through Threepenny could be considered again once the #ac("FRP") library is replaced by reactive-banana #footnote("https://github.com/HeinrichApfelmus/reactive-banana").
The author of Threepenny, Heinrich Apfelmus, plans to do that in a future release @threepenny-frp-replacement.

Generally, there is no reason why VisualFP couldn't be implemented using #ac("FRP").
In such an implementation, there would be three kinds of events:
- "Reset Editor" button is clicked
- "View Haskell" button is clicked
- A block value is dropped into a type hole. This event combines all events from every type hole in the function definition.

The value definition of the user-defined function is a behavior that changes every time a block value is dropped into the value definition.
When the value definition changes, the elements displayed in the function editor must also be updated.
