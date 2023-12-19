#import "../../../acronyms.typ": *

= Architecture <poc-architecture>
This chapter describes the architecture chosen for the #ac("PoC") application.

As described in @option-ui-decision, the #ac("PoC") uses Electron.js and Threepenny-GUI for its implementation.
This choice results in the application having a "remote" user interface @Renzel1997ClientServerAF, as shown in @container-diagram.

#figure(
  image("../../static/container_diagram.svg", width: 50%),
  caption: "C4 Container Diagram for VisualFP PoC"
)<container-diagram>

The Threepenny #ac("UI") starts a local web server from which it serves static files to the #ac("UI").
The Electron.js app doesn't contain any logic and acts as a browser.

Theoretically, Threepenny could also host a regular web application, eliminating the need for an Electron app.
However, Threepenny controls the browser via web sockets, so a performant server and a good network connection are required.
Thus, it is recommended to avoid this, as a high latency connection would be noticeable in #ac("UI") updates.
@threepenny_gui

The Threepenny application consists of three components, as shown in @component-diagram.

#figure(
  image("../../static/component_diagram.svg", width: 90%),
  caption: "C4 Component Diagram for VisualFP's Threepenny UI"
)<component-diagram>

Splitting the application into these three components isolates the #ac("UI") from the business logic, making the #ac("UI") easily replaceable.

== UI Component
The #ac("UI") component is described in @ui.

== Translation Component <translation-layer>
The translation component has been built between the #ac("UI") and the inference engine.
As can be seen in @component-diagram, it is responsible for translating between the data models used by the #ac("UI") and the type inference engine:
1. From the untyped model of the #ac("UI") to the input model of the inference engine 
2. From the inferred model of the inference engine to the typed #ac("UI") model

This process isn't as straightforward as one might think, as the #ac("UI") and
inference engine have different representations of function application: The #ac("UI")
maintains a list of arguments per reference. In contrast, the inference engine
expects applications to happen in dedicated nodes. This discrepancy has also
been described in @application-decision.

Translating the inferred model into the typed #ac("UI") model is quite simple:
Applications are simplified into arguments of the underlying element.
Translating untyped #ac("UI") values, where the amount of arguments is unknown, into
the input model of the inference engine requires a more elaborate process.

One approach to this issue might have been to try out different numbers of
nested applications and see which one might be successfully type-checked.

For VisualFP a different approach was chosen: In case the arguments of a
reference need to be inferred, the #ac("UI") model passes the original type hole along.
The translation component then compares the arity of the type hole with the arity of
the reference and adds as many applications as needed for the two to match.    

== Inference Component
The inference engine is described in @type-inference.