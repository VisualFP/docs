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
#include_section("design_concept/content/poc/compiler-platform.typ", heading_increase: 3)

=== Decision
Due to X and Y technologies this and that are best for this project. // TODO: document technology decision
