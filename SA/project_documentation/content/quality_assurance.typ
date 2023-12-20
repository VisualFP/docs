#import "../../acronyms.typ": ac

= Quality Assurance

The quality assurance concentrated on the #ac("PoC") application.

Since it is intended to prove the feasibility of the concept only and wouldn't
be released to end-users, we decided that the quality wasn't as important as the
included functionality. The time budget for the #ac("PoC") has also been
limited, so the quality measurements employed had to be cost-effective. 

Still, we did follow some quality guidelines while developing the application. 

== Compiler Warnings

The project utilized #ac("GHC") warnings by enabling the `-Wall` option for all
compilations.

All warnings were resolved at the time of submission. 

== Workflow

In the first weeks of the #ac("PoC") implementation, we've established a baseline
of functionality to build upon.

Afterwards, all changes were appropriately reviewed by the other member through
pull requests to establish some consistency within the sources.

== Testing

We've opted for the test automation pyramid @testing-pyramid as the guideline
for our testing strategy, and have made some adjustments to account for the
small scope of the project. 

The underlying idea of the test automation pyramid is to categorize tests
according to their cost, which is determined by their brittleness, the effort
required to write them, and their execution time. Then, it dictates that the
cheaper a test category is, the more tests there should be of it. In turn, there
should be as few costly tests as possible.

For VisualFP, we've adjusted the test automation pyramid for our situation as
follows:

/ 1. Manual: Since manual tests are the most expensive, we've limited manual
  testing to exploratory runs. In such runs, we've tried to accomplish different
  things using the complete application while searching for bugs.

/ 2. Component: Component tests test the functionality of a component as a
  subsystem of the application in isolation. We didn't interpret out the term
  'component' too strictly and wrote tests according to how we felt they made
  sense.

/ 3. Unit: Unit tests are the cheapest; thus, most tests are of this kind.

We've opted against dedicated integration or #ac("UI") tests since setting them
up would have been costly, which, given the limited time budget of the
#ac("PoC"), we've deemed them not to be a good investment.
