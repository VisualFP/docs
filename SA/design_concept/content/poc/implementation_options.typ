#import "../../../style.typ": include_section
#import "../../../acronyms.typ": ac

= Implementation Options
In preparation for the PoC implementation, different implementation options were considered.
This section describes considered deployment platforms and technologies, their pros & cons, and which options were chosen for the PoC implementation.

== Deployment platform
For VisualFP, two possible deployment platforms were considered: A web application or a desktop application.

#include_section("design_concept/content/poc/web_app.typ", heading_increase: 2)
#include_section("design_concept/content/poc/desktop_app.typ", heading_increase: 2)

== Technologies
VisualFP requires external technologies to implement a UI, the backend logic and a compiler platform to translate the visual code representation to Haskell code.
The following technologies were considerd.

#include_section("design_concept/content/poc/electron.typ", heading_increase: 2)
#include_section("design_concept/content/poc/haskell_gi.typ", heading_increase: 2)
#include_section("design_concept/content/poc/threepenny_gui.typ", heading_increase: 2)
#include_section("design_concept/content/poc/bolero.typ", heading_increase: 2)
#include_section("design_concept/content/poc/compiler-platform.typ", heading_increase: 2)

== Decision <impl_options_decision>
Since this project wants to create a tool for visual functional programming, implementing the tool in a functional language is most fitting.

All technologies to implement UIs in a functional language are unfamiliar to the authors.
Because of that, it is important to have a good abstraction between UI and business logic, so that the UI framework could be exchanged with a better option with as little effort as possible.
Bolero encourages a clear separation between UI and business logic due to its Model-View-Update architecture, but a good abstraction can be achieved with other frameworks too.

#ac("FRP") is a good concept to incorporate UI behavior and events into functional programming.
Of the frameworks considered, only threepenny-gui includes a library that supports #ac("FRP").
Despite not following the #ac("FRP") concepts, Bolero also supports reactive handling of UI contents.

Since the project was intended to create a tool for visually programming Haskell, it makes sense to implement VisualFP in Haskell.
For that reason, Threepenny will be used for the PoC.

There are of course many other Haskell libraries for UI implementations, but many of them rely on the compilation of Haskell to JavaScript.
This cross-compilation is based on GHCJS, which unfortunetaly provides some challenges in the setup of projects using such libraries.
Given the small amount of time available for the PoC, these libraries weren't considered suitable for this project.
However, in a project with a larger time budget, a GHCJS library would make sense, since such a library would eliminate the need for a local web-server, and since all code would be compiled to JavaScript, would automatically be platform independent.

For the compiler platform it would be ideal to use GHC, since implementing a custom solution doesn't scale well.
Due to time constraints for the PoC and the problems expected to occur with GHC as a library, the PoC will use a custom compiler platform anywaay.