#import "@preview/tablex:0.0.5": tablex, cellx

= Risk Management
The following section describes the risks we identified for our project and actions to prevent or correct them.
Risks are color-coded according to @risk_matrix.

== Initial Risk Assessment
In @initial_risk_assessment all risks identified at the start of the project are documented.
#figure(
    tablex(
        columns: 4,
        align: center + horizon,

        [*ID*], [*Risk*], [*Preventive actions*], [*Corrective actions*],

        cellx(fill: green)[001], [*Difficulties with Typst*], [-], [Switch to LaTeX in case typst lacks neccessary features],
        cellx(fill: yellow)[002], [*Absence of team member*], [-], [Trying to catch up, adjust project scope],
        cellx(fill: yellow)[003], [*Too little time for prototype*], [Include buffer in project plan, limit prototype to most important features], [Focus on functionality instead of UI design, cut features if necessary/possible],
        cellx(fill: red)[004], [*UI design is too difficult for certain features*], [limit amount of features included in design to minimize time impact], [try to simplify feature, remove feature from project scope]
    ),
    supplement: "Table"
)<initial_risk_assessment>

== Risk Matrix
This risk matrix describes the color-coding used above using the factors "probability" and "severity".
#figure(
    tablex(
        columns: 6,
        align: center + horizon,

        [*Probability / Severity*], [*1 Unlikely*], [*2 Seldom*], [*3 Occasional*], [*4 Probable*], [*5 Frequent*],
        [*4 Catastrophic*], cellx(fill: yellow)[], cellx(fill: red)[], cellx(fill: red)[], cellx(fill: red)[], cellx(fill: red)[],
        [*3 Ciritcal*], cellx(fill: green)[], cellx(fill: yellow)[], cellx(fill: yellow)[], cellx(fill: red)[], cellx(fill: red)[],
        [*2 Major*], cellx(fill: green)[], cellx(fill: green)[], cellx(fill: yellow)[], cellx(fill: yellow)[], cellx(fill: red)[],
        [*1 Minor*], cellx(fill: green)[], cellx(fill: green)[], cellx(fill: green)[], cellx(fill: yellow)[], cellx(fill: yellow)[]
    ),
    supplement: "Table",
    caption: "Risk matrix"
)<risk_matrix>