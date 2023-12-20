#import "../../../style.typ": include_section
#import "../../../acronyms.typ": ac

= Implementation Options

Different implementation options were considered for the
#ac("PoC"). The following sections describe the options that were considered and
choices that have been made.

== Deployment platform <deployment-platform-options>

For VisualFP, two possible deployment platforms were considered: A web
application or a desktop application.

#include_section("design_concept/content/poc/options_deployment_desktopapp.typ", heading_increase: 2)
#include_section("design_concept/content/poc/options_deployment_webapp.typ", heading_increase: 2)
#include_section("design_concept/content/poc/options_deployment_decision.typ", heading_increase: 2)

== UI Frameworks <ui-framework-options>

VisualFP requires external technologies to implement a #ac("UI"), especially to
achieve cross-platform support without duplication. The following
technologies were considered.

#include_section("design_concept/content/poc/options_ui_electron.typ", heading_increase: 2)
#include_section("design_concept/content/poc/options_ui_haskellgi.typ", heading_increase: 2)
#include_section("design_concept/content/poc/options_ui_threepenny.typ", heading_increase: 2)
#include_section("design_concept/content/poc/options_ui_ghcjs.typ", heading_increase: 2)
#include_section("design_concept/content/poc/options_ui_bolero.typ", heading_increase: 2)
#include_section("design_concept/content/poc/options_ui_decision.typ", heading_increase: 2)

== Compiler Platform <compiler-platform-options>

A compiler platform is a set of tools and libraries that can be used to
compile code. VisualFP requires a compiler platform to build
the application itself but also as a library to compile programs created by
the users in the visual editor.

These two use cases pose different requirements on the compiler platform:

- To be used as a compiler, the platform must have a set of support tooling
  available, such as a build tool and a language server.

- To be used as a library, the compiler platform must offer a well-defined
  #ac("API") that can be used to create, parse, and compile an #ac("AST")
  programmatically.

For these two use cases, two different compiler platforms may be used.

The compiler used to build the #ac("PoC") itself depends on the language and
other frameworks chosen to implement the application, this section focuses
on the use of a compiler platform as a library.

#include_section("design_concept/content/poc/options_compiler_ghc.typ", heading_increase: 2)
#include_section("design_concept/content/poc/options_compiler_other.typ", heading_increase: 2)
#include_section("design_concept/content/poc/options_compiler_custom.typ", heading_increase: 2)
#include_section("design_concept/content/poc/options_compiler_decision.typ", heading_increase: 2)
