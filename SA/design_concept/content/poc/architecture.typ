#import "../../../acronyms.typ": *

= Architecture <poc-architecture>

This chapter describes the architecture chosen for the #ac("PoC") application.

== Client/Server Cut

As described in @option-ui-decision, the #ac("PoC") uses Electron.js and Threepenny-GUI for its implementation.

Using the client-server cut classification by Klaus Renzel @Renzel1997ClientServerAF, the technology choice results
in the application having a "remote user interface" as shown in @container-diagram.

#figure(
  image("../../static/container_diagram.svg", width: 50%),
  caption: "C4 Container Diagram for VisualFP PoC"
)<container-diagram>

The Threepenny #ac("UI") starts a local web server from which it serves static files to the #ac("UI").
The Electron.js app doesn't contain any logic and acts as a browser.

Theoretically, Threepenny could also host a regular web application, eliminating the need for an Electron app.
However, Threepenny controls the browser via web sockets, so a performant server and a good network connection are required.
It is recommended to avoid this, as a high latency connection would be noticeable through slow #ac("UI") updates.
@threepenny_gui

== Backend Components

Simon Brown suggests to use the C4 model to visualize the architecture of an
application through diagrams on 4 levels @c4-model. The container diagram has
been used to showcase the client/server cut in @container-diagram, the component
diagram of the backend is shown in @component-diagram.

#figure(
  image("../../static/component_diagram.svg", width: 90%),
  caption: "C4 Component Diagram for VisualFP's Threepenny UI"
)<component-diagram>

Splitting the backend into these three components isolates the #ac("UI") from the business logic, making either of them easily replaceable.

The translation component is described in more detail in @translation-layer, the #ac("UI") component in @ui and the inference engine in
@type-inference.