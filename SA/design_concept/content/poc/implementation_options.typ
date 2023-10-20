#import "../../../style.typ": include_section

= Implementation Options
In preparation for the PoC implementation, different implementation options were considered.
This section describes considered deployment platforms and technologies, their pros & cons, and which options were chosen for the PoC implementation.

== Deployment platform
For VisualFP, two possible deployment platforms were considered: A web application or a desktop application.

#include_section("design_concept/content/poc/web_app.typ", heading_increase: 3)
#include_section("design_concept/content/poc/desktop_app.typ", heading_increase: 3)

=== Decision
Taking into account that VisualFP could be used to teach functional programming at OST, it makes sense to implement VisualFP as a desktop application.
This eliminates the effort for hosting the application.
Also, the possibility for VisualFP to organize source files directly on the user's file system makes the application's backend simpler.
The need to support different operating systems can be avoided by using platform independant technologies.

== Technologies
To implement VisualFP as a desktop application, the following technologies were considered.
VisualFP requires technologies to implement a UI, the backend logic and a compiler platform to translate the visual code representation to Haskell code.

#include_section("design_concept/content/poc/electron.typ", heading_increase: 3)
#include_section("design_concept/content/poc/haskell_gi.typ", heading_increase: 3)
#include_section("design_concept/content/poc/compiler-platform.typ", heading_increase: 3)

=== Decision
Due to X and Y technologies this and that are best for this project.
