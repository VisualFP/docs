#import "@preview/tablex:0.0.5": tablex, cellx

= Risk Management
The following section describes the risks we identified for our project and actions to prevent or correct them.
Risks are color-coded according to @risk_matrix.

== Initial Risk Assessment
In @initial_risk_assessment all risks identified at the start of the project are documented.

#let risk_head(name) = cellx(align: center + horizon)[*#name*]
#let risk(id, level, risk: [-], prevention: [-], correction: [-]) = (
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

    ..risk([001], green,
      risk: [Difficulties with Typst],
      correction: [Switch to LaTeX in case typst lacks necessary features]),
    
    ..risk([002], yellow,
      risk: [Absence of team member],
      correction: [Trying to catch up, adjust project scope]),

    ..risk([003], yellow,
      risk: [Too little time for prototype],
      prevention: [Include buffer in project plan, limit prototype to most important features],
      correction: [Focus on functionality instead of UI design, cut features if necessary/possible]),

    ..risk([004], yellow,
      risk: [Block Model cannot be simplified for PoC],
      correction: [Change block model where appropriate to make it easier to implement]),

    ..risk([005], red,
        risk: [UI design is too difficult for certain features],
        prevention: [Limit amount of features included in design to minimize time impact],
        correction: [Try to simplify feature, remove feature from project scope]),

    ..risk([006], red,
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
        cellx(fill: yellow)[], cellx(fill: red)[], cellx(fill: red)[], cellx(fill: red)[], cellx(fill: red)[],

        risk_head()[3 Critical],
        cellx(fill: green)[], cellx(fill: yellow)[], cellx(fill: yellow)[], cellx(fill: red)[], cellx(fill: red)[],

        risk_head()[2 Major],
        cellx(fill: green)[], cellx(fill: green)[], cellx(fill: yellow)[], cellx(fill: yellow)[], cellx(fill: red)[],
        
        risk_head()[1 Minor],
        cellx(fill: green)[], cellx(fill: green)[], cellx(fill: green)[], cellx(fill: yellow)[], cellx(fill: yellow)[]
    ),
    supplement: "Table",
    kind: "table",
    caption: "Risk matrix"
)<risk_matrix>