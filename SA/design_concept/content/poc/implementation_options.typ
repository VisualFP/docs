#import "../../../style.typ": include_section
#import "../../../acronyms.typ": ac

= Implementation Options
In preparation for the PoC implementation, different implementation options were considered.
This section describes considered deployment platforms and technologies, their pros & cons, and which options were chosen for the PoC implementation.

== Deployment platform
For VisualFP, two possible deployment platforms were considered: A web application or a desktop application.

#include_section("design_concept/content/poc/web_app.typ", heading_increase: 3)
#include_section("design_concept/content/poc/desktop_app.typ", heading_increase: 3)

== Technologies
VisualFP requires external technologies to implement a UI, the backend logic and a compiler platform to translate the visual code representation to Haskell code.
The following technologies were considerd.

#include_section("design_concept/content/poc/electron.typ", heading_increase: 3)
#include_section("design_concept/content/poc/haskell_gi.typ", heading_increase: 3)
#include_section("design_concept/content/poc/threepenny_gui.typ", heading_increase: 3)
#include_section("design_concept/content/poc/bolero.typ", heading_increase: 3)
#include_section("design_concept/content/poc/compiler-platform.typ", heading_increase: 3)

== Decision
Since this project wants to create a tool for visual functional programming, implementing the tool in a functional language is most fitting.

All technologies to implement UIs in a functional language are unfamiliar to the authors.
Because of that, it is important to have a good abstraction between UI and business logic, so that the UI framework could be exchanged with a better option with as little effort as possible.
Bolero encourages a clear separation between UI and business logic due to its Model-View-Update architecture, but a good abstraction can be achieved with other frameworks too.

#ac("FRP") is a good concept to incorporate UI behavior and events into functional programming.
Of the frameworks considered, only threepenny-gui includes a library that supports #ac("FRP").
Despite not following the #ac("FRP") concepts, Bolero also supports reactive handling of UI contents. 

//TODO: document decision for threepenny or bolero based on project meeting 8

For the compiler platform it would be ideal to use GHC, since implementing a custom solution doesn't scale well.
However, due to time constraints for the PoC and the problems expected to occur with GHC as a library, the PoC will use a custom compiler platform anyway.

// TODO: incorporate deployment platform arguments into decision text
// Since VisualFP could be used to teach functional programming at various institutions, it makes sense to implement it without the need for a hosting solution.
// Also, the possibility for VisualFP to organize source files directly on the user's file system makes the application's backend simpler.
// The need to build a desktop application per supported OS can be avoided by using platform independant technologies.
// Thus, implementing VisualFP is the better option compared to a web application.