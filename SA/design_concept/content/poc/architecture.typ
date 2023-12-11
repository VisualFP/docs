= Architecture <poc-architecture>
This chapter describes the architecture of the PoC application.

As described in @impl_options_decision, the PoC uses Electron.js and Threepenny-GUI for its implementation.
This choice results in the applicaiton havig a remote user interface, as can be seen in @container-diagram.

#figure(
  image("../../static/container_diagram.png", width: 50%),
  caption: "Container Diagram for VisualFP PoC"
)<container-diagram>

Threepenny-GUI starts a local web-server where it serves static files for the UI.
The Electron.js app itself doesn't contain any logic and just acts as a browser.

Theoretically, Threepenny could also be used to host a regular web application, eliminating the need for an Electron app.
However, since Threepenny frequently controls the displaying browser via web sockets, it is recommended to avoid this, reducing the latency for UI updates.
@threepenny_gui

The Threepenny application itself consists of three components, which can be seen in @component-diagram.

#figure(
  image("../../static/component_diagram.png", width: 90%),
  caption: "Component Diagram for VisualFP's Threepenny UI"
)<component-diagram>

Splitting the application into these 3 components intends to isolate the UI from the business logic, making the UI easily replacable.

== UI Component
The UI components is described in @ui.

== Translation Component <translation-layer>

The translation layer has been built between the UI and the inference engine
and is responsible for converting the different models. The essential operation
of the translation layer can be seen in @translation-layer-image.

#figure(
  text(align(center, image("../../static/translation-layer.svg", width: 55%))),
  caption: [Translation Layer])  <translation-layer-image>

As can be seen in @translation-layer-image, the translation translates models
two times:

1. From the untyped model of the UI to the input model of the inference engine 
2. From the inferred model of the inference engine to the typed UI model

This process isn't as straightforward as one might think, as the UI and
inference engine have different representations of function application: The UI
layer maintains a list of arguments per reference. In contrast, the inference engine
expects applications to happen in dedicated nodes. This discrepancy has also
been described in @design-application.

Translating the inferred model into the typed UI model isn't tricky:
Applications are simplified into arguments of the underlying element.
Translating untyped UI values, where the amount of arguments is unknown, into
the input model of the inference engine requires a more elaborate process.

One approach to this issue might have been to try out different numbers of
nested applications and see which one might be successfully type-checked.

For VisualFP, we've chosen a different approach: In case the arguments of a
reference need to be inferred, the UI model passes the original type-hole along.
The translation layer then compares the arity of the type-hole with the arity of
the reference and adds as many applications as needed for the two to match.    

== Inference Component
The inference engine is described in @type-inference.