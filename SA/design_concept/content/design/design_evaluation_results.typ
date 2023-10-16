#import "@preview/tablex:0.0.5": tablex, cellx

= Design Evaluation
This section documents all answers received from the design evaluation questionnaires and the conclusions drawn from them.

== Questionnaire Results <design_eval_results>
The design evaluation questionnaire (as described in @design_eval_questionnaire) was given to X students. //TODO: document actual numbers of questionnaire given out
These are the results:

#let questionnaireResult(
    participant,
    participantDescription,
    meaningAnswer,
    lookAnswer,
    teachingAnswer,
    scalingAnswer,
    suggestionsAndComments
) = {
    [==== Questionnaire Results from #participant]  // the heading_increase don't seem to affect this

    participantDescription

    figure(
        tablex(
            columns: 2,

            cellx(align: center + horizon)[*Question*],
            cellx(align: center + horizon)[*Answer*],

            cellx()[*Were you able to understand the meaning of the boxes and arrows?*],
            cellx(meaningAnswer),

            cellx()[*Do you find the concept nice to look at?*],
            cellx(lookAnswer),

            cellx()[*Could you imagine teaching functional programming using this vizualization?*],
            cellx(teachingAnswer),

            cellx()[*Could you imagine how the concept scales to more complex expressions?*],
            cellx(scalingAnswer),

            cellx()[*Do you have any suggestions for improvement or general comments on the concept?*],
            cellx(suggestionsAndComments),
        ),
        kind: "table",
        supplement: "Table",
        caption: "Design evaluation questionnaire answers from " + participant
    )
}

#questionnaireResult(
    "Student A",
    "Student A studies at OST and hasn't addented the lecture on functional programming.",
    "meaning answer",
    "teaching answer",
    "teachingAnswer",
    "scaling answer",
    "comment"
)

== Design Decision <design_decision>
Based on the results from the design evalution questionnaires it is clear that design X is best due to X, Y and Z.