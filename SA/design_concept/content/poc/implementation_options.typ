#import "../../../style.typ": include_section

= Implementation Options
In preparation for the PoC implementation, different implementation options were considered.
This section describes considered deployment platforms and technologies, their pros & cons, and which options were chosen for the PoC implementation.

== Deployment platform
For VisualFP, two possible deployment platforms were considered: A web application or a desktop application.

#include_section("design_concept/content/poc/web_app.typ", heading_increase: 3)
#include_section("design_concept/content/poc/desktop_app.typ", heading_increase: 3)

=== Decision
Since VisualFP could be used to teach functional programming at various institutions, it makes sense to implement it without the need for a hosting solution.
Also, the possibility for VisualFP to organize source files directly on the user's file system makes the application's backend simpler.
The need to build a desktop application per supported OS can be avoided by using platform independant technologies.
Thus, implementing VisualFP is the better option compared to a web application.

== Technologies
VisualFP requires external technologies to implement a UI, the backend logic and a compiler platform to translate the visual code representation to Haskell code.
The following technologies were considerd.

#include_section("design_concept/content/poc/electron.typ", heading_increase: 3)
#include_section("design_concept/content/poc/haskell_gi.typ", heading_increase: 3)
#include_section("design_concept/content/poc/threepenny_gui.typ", heading_increase: 3)
#include_section("design_concept/content/poc/compiler-platform.typ", heading_increase: 3)

=== Decision
Since this project wants to create a tool for visual functional programming, implementing the tool in a functional language would be most fitting.
The most interesting option for that would be threepenny-GUI, since it can be used with the widely used Electron framework.
However, since threepenny-GUI is still experimental, its usage would bring risks to the project that clash with the rather small time budget available for the PoC.
The same goes for haskell-gi, since both authors are unfamiliar with the library.

This is why the frontend of the application will be implemented in Electron. It is easy to use and supports common web frameworks such as Vue.js to implement the UI, which the authors are familiar with.
Because the application is about visual functional programming, it makes sense to implement its domain logic in a functional language, which is why the backend will be implemented in Haskell.
These two technologies come together when the electron application starts a sub-process to interact with the backend.

For the compiler platform it would be ideal to use GHC, since implementing a custom solution doesn't scale well.
However, due to the time constraints and the problems expected to occur with GHC as a library, the PoC will use a custom compiler platform anyway.
