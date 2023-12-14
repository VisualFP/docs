#import "@preview/tablex:0.0.5": tablex, cellx
#import "../../acronyms.typ": ac
#let lightgreen = rgb(119, 221, 119)
#let lightyellow = rgb(255, 250, 160)
#let lightred = rgb(250, 160, 160)

= Risk Management
The following section describes the risks we identified for our project and actions to prevent or correct them.
Risks are color-coded according to @risk_matrix.

== Initial Risk Assessment
In @initial_risk_assessment all risks identified at the start of the project are documented.

#let risk_head(name) = cellx(align: center + horizon)[*#name*]
#let initial_risk(id, level, risk: [-], prevention: [-], correction: [-]) = (
  cellx(fill: level, id),
  cellx()[*#risk*],
  cellx(prevention),
  cellx(correction),
)

#show figure: set block(breakable: true)
#figure(
  tablex(
    columns: (auto, 1.3fr, 2fr, 2fr),

    risk_head[ID], risk_head[Risk], risk_head[Preventive actions], risk_head[Corrective actions],

    ..initial_risk([001], lightgreen,
      risk: [Difficulties with Typst],
      correction: [Switch to LaTeX in case typst lacks necessary features]),
    
    ..initial_risk([002], lightyellow,
      risk: [Absence of team member],
      correction: [Trying to catch up, adjust project scope]),

    ..initial_risk([003], lightyellow,
      risk: [Too little time for prototype],
      prevention: [Include buffer in project plan, limit prototype to most important features],
      correction: [Focus on functionality instead of UI design, cut features if necessary/possible]),

    ..initial_risk([004], lightyellow,
      risk: [Block Model cannot be simplified for PoC],
      correction: [Change block model where appropriate to make it easier to implement]),

    ..initial_risk([005], lightred,
      risk: [UI design is too difficult for certain features],
      prevention: [Limit amount of features included in design to minimize time impact],
      correction: [Try to simplify feature, remove feature from project scope]),

    ..initial_risk([006], lightred,
      risk: [Translation between blocks and Haskell too difficult for PoC],
      correction: [Implement alternative execution model]),
  ),
  kind: "table",
  supplement: "Table",
  caption: "Initial Risk Assessment"
)<initial_risk_assessment>

== Risk Matrix
This risk matrix describes the color-coding used above using "probability" and "severity".

#figure(
    tablex(
        columns: (1fr, auto, auto, auto, auto, auto),
        align: center + horizon,

        risk_head()[Probability / Severity],
        risk_head()[1 Unlikely],
        risk_head()[2 Seldom],
        risk_head()[3 Occasional],
        risk_head()[4 Probable],
        risk_head()[5 Frequent],

        risk_head()[4 Catastrophic],
        cellx(fill: lightyellow)[], cellx(fill: lightred)[], cellx(fill: lightred)[], cellx(fill: lightred)[], cellx(fill: lightred)[],

        risk_head()[3 Critical],
        cellx(fill: lightgreen)[], cellx(fill: lightyellow)[], cellx(fill: lightyellow)[], cellx(fill: lightred)[], cellx(fill: lightred)[],

        risk_head()[2 Major],
        cellx(fill: lightgreen)[], cellx(fill: lightgreen)[], cellx(fill: lightyellow)[], cellx(fill: lightyellow)[], cellx(fill: lightred)[],
        
        risk_head()[1 Minor],
        cellx(fill: lightgreen)[], cellx(fill: lightgreen)[], cellx(fill: lightgreen)[], cellx(fill: lightyellow)[], cellx(fill: lightyellow)[]
    ),
    supplement: "Table",
    kind: "table",
    caption: "Risk matrix"
)<risk_matrix>


== Risk Assessment Retrospection

@risk_assessment_retrospection lists all previously identified risks, their
initial assessments and adds a retrospection assessment to it.

#let retrospective_risk(id, risk: [-], initial: red, quantitative: red, qualitative: [-]) = (
  cellx(id),
  cellx()[*#risk*],
  cellx(fill: initial, []),
  cellx(fill: quantitative, qualitative),
)

#figure(
  tablex(
    columns: (auto, 1fr, 0.4fr, 2fr),

    risk_head[ID], risk_head[Risk], risk_head[Initial], risk_head[Retrospection],

    ..retrospective_risk([001],
      risk: [Difficulties with Typst],
      initial: lightgreen,
      quantitative: lightyellow,
      qualitative: [
        Most use cases could be implemented with little effort, but some were
        not supported. \
        For example, there is no Typst equivalent to the 'part' system of the
        popular LaTeX article document class. Although possible, rebuilding
        such features is time-consuming. 
        ]),
    
    ..retrospective_risk([002],
      risk: [Absence of team member],
      initial: lightyellow,
      quantitative: lightgreen,
      qualitative: [No team member was absent for the duration of the project.]),

    ..retrospective_risk([003],
      risk: [Too little time for prototype],
      initial: lightyellow,
      quantitative: lightyellow,
      qualitative: [
        The concept took a considerable amount of time from the
        project. Implementing the PoC has indeed been a challenge]),

    ..retrospective_risk([004],
      risk: [Block Model cannot be simplified for PoC],
      initial: lightyellow,
      quantitative: lightgreen,
      qualitative: [
        We've found a concept that satisfied the requirements and was proven by
        a simple PoC.
      ]),

    ..retrospective_risk([005],
      risk: [UI design is too difficult for certain features],
      initial: lightred,
      quantitative: lightyellow,
      qualitative: [
        Although we could realize everything planned for the PoC, Threepenny did
        not allow for a transition to #ac("FRP") because of a lack of features.
      ]),

    ..retrospective_risk([006],
      risk: [Translation between blocks and Haskell too difficult for PoC],
      initial: lightred,
      quantitative: white,
      qualitative: [
        The PoC does not offer a two-way translation between the
        block-language and Haskell, as it was deemed out of scope during the project.]),
  ),
  kind: "table",
  supplement: "Table",
  caption: "Risk Assessment Retrospection"
)<risk_assessment_retrospection>
