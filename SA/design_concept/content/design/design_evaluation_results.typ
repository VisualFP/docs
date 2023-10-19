#import "@preview/tablex:0.0.5": tablex, cellx

= Design Evaluation
This section documents all answers received from the design evaluation questionnaires and the conclusions drawn from them.

== Questionnaire Results <design_eval_results>
The design evaluation questionnaire (as described in @design_eval_questionnaire) was given to X students. //TODO: document actual numbers of questionnaire given out
These are the results:

#let questionnaireResult(
    participant,
    participantDescription,
    answersPerConcept,
    generalComments: []
) = {
    [==== Questionnaire Results from #participant]  // the heading_increase don't seem to affect this
    participantDescription

    for conceptAnswers in answersPerConcept {
        let (concept, meaningAnswer, lookAnswer, teachingAnswer, scalingAnswer, suggestionsAndComments) = conceptAnswers
        [===== #concept]  // the heading_increase don't seem to affect this
        figure(
            tablex(
                columns: 2,

                cellx(align: center + horizon)[*Question*],
                cellx(align: center + horizon)[*Answer*],

                cellx()[*Were you able to understand the meaning of the boxes and arrows?*],
                cellx(conceptAnswers.meaningAnswer),

                cellx()[*Do you find the concept nice to look at?*],
                cellx(conceptAnswers.lookAnswer),

                cellx()[*Could you imagine teaching functional programming using this vizualization?*],
                cellx(conceptAnswers.teachingAnswer),

                cellx()[*Could you imagine how the concept scales to more complex expressions?*],
                cellx(conceptAnswers.scalingAnswer),

                cellx()[*Do you have any suggestions for improvement or general comments on the concept?*],
                cellx(conceptAnswers.suggestionsAndComments),
            ),
            kind: "table",
            supplement: "Table",
            caption: "Design evaluation questionnaire answers for " + concept + " design from " + participant
        )
    }

    if (generalComments != "") {
        [===== General Comments]
        generalComments
    }
}

#questionnaireResult(
    "Prof. Dr. Farhad Mehta",
    "Prof. Dr. Farhad Mehta is a lecturer at OST and advisor of this project.",
    (
        (
            concept: "Flo-inspired",
            meaningAnswer: "Not really. Semantics & the arrows are unclear (insertion or ?? result)",
            lookAnswer: "Not really.",
            teachingAnswer: "Not really. The arrows obsucre the denotational semantics.",
            scalingAnswer: "Yes. The arrows allow blocks to remain small.",
            suggestionsAndComments: "",
        ),
        (
            concept: "Scratch-inspired",
            meaningAnswer: "Somewhat better than the Flo-inspired version.",
            lookAnswer: "Somewhat better than the Flo-inspired version.",
            teachingAnswer: "Somewhat better than the Flo-inspired version.",
            scalingAnswer: "Somewhat better than the Flo-inspired version.",
            suggestionsAndComments: "Without types, one has no guidance on which blocks fit where",
        ),
        (
            concept: "Haskell Function-Notation inspired",
            meaningAnswer: "Better than the other two, but not quite there yet.",
            lookAnswer: "Better than the other two, but not quite there yet.",
            teachingAnswer: "Better than the other two, but not quite there yet.",
            scalingAnswer: "Better than the other two, but not quite there yet.",
            suggestionsAndComments: "",
        )
    ),
    generalComments: [
        The questionnaire may not do full justice to the visual progrmming methods since it only reviews the end state, and not the method of programming.

        All methods seem to have a "bottom-up" strategy on constructing programs (i.e. start with small steps with what is available, and tinker with it unit you come up with something that you can use).
        The imperative paradigm forces one to do this (top level blocks are always ";", and therefore uninteresting).
        In FP, we are able to design our programs "top-down", starting with a specification (type definition at least).
        This specification often admits a top-level function that is often interesting (e.g. filter, map), with type "holes" that can similarly be filled successively.

        It may be a good idea to design the VP tool around to support the method we want people to learn "how to design programs" (see "recipe for defining functions" & video on "Schreib dein program").

        There are huge parallels between programming & constructing formal proofs (Curry-Howard-Lambek isomorphism) that can be a mental aid in designing such a tool - even if one does not immediately expose this to the beginner (please don't).

        The more I think about it, the more I am under the impression the VP tool and concept should support the existing recommended methodology and process of designing (functional) programs.
        This process has been quite well thought out, and does not need to be re-invented.
        What I feel is missing, when doing this in a textual form, is that the "visual model" of what this text should look like in the minds of the learners is not immediately visible.
        A visual tool can help learners build the correct visual model/intuition faster.
        Once this visual model/intuition is finally in place, the tool will often little benefit and become tedious to use.
        The users will then switch to the textual representation, but still always have the visual model in mind.
    ]
)

#questionnaireResult(
    "Raphael Das Gupta",
    "Raphael Das Gupta is a scientific employee at the institute for software at OST",
    (
        (
            concept: "Flo-inspired",
            meaningAnswer: [
                Mostly. I was first wondering why the arrow in the "Product of Numbers" example goes from the interim-result-ellipse 'Num a => a' to the argument slot of "(\*):apply", instead of the product-block as with all other cases where functions are passed as parameters. 
                But then I realised that the result of the function call with xs is passed and not the function itself.
            ],
            lookAnswer: "No, too noisy.",
            teachingAnswer: "Perhaps, but only as an aid to show certain signatures of a partial expression, not in general to teach functional programming from the ground up.",
            scalingAnswer: "It'll get very complex very fast.",
            suggestionsAndComments: [
                - Move type-signatures into the blocks instead of above them
                - Make type-signatures hideable
                - Option to switch between curried-interpretation and n-ary-function interpretation
            ]
        ),
        (
            concept: "Scratch-inspired",
            meaningAnswer: "I think so.",
            lookAnswer: "Yes",
            teachingAnswer: "Yes, but I don't see an advantage compared to a pretty AST.",
            scalingAnswer: "It'll look like a mountain-skyline.",
            suggestionsAndComments: "Highlight which argument-instances belong to which argument-bindings when hovering over them.",
        ),
        (
            concept: "Haskell Function-Notation inspired",
            meaningAnswer: "Mostly, but I'm not sure if I understood everything right.",
            lookAnswer: "Yes",
            teachingAnswer: "Perhaps, but only as an aid to show certain signatures of a partial expression, not in general to teach functional programming from the ground up.",
            scalingAnswer: "It would probably get complex too, but probably not as complex as the other two designs.",
            suggestionsAndComments: [
                - Put the function-types next to the function name, so that there is no danger of confusing them.
                - Your approach for pattern-matching nicely shows that you don't have access to parts of a pattern that aren't named. But somehow the way it's visualized seems strange to me and is somewhat unsatisfying. But I don't know how to do it better.
            ]
        )
    ),
    generalComments: [
        I quite like the bock-arrow diagrams in "The state monad" in "Programming in Haskell" by Graham Hutton (second edition, chapter 12.3 Monads, pages 168 - 141).
        I don't know how well that approach generalises without overloading it like the Flo-inspired examples.
        In contrast to your examples the diagrams from the book show the data flow (but not how calls are plugged together syntactically).
    ]
)

#questionnaireResult(
    "Noah Geeler",
    "Noah Geeler is a third-year software-development apprentice at Vontobel.",
    (
        (
            concept: "Flo-inspired",
            meaningAnswer: "No, but I assume that the squares are some kind of input?",
            lookAnswer: "If I understood this concept, I assume that I would've thought that it looked to complicated.",
            teachingAnswer: "",
            scalingAnswer: "",
            suggestionsAndComments: ""
        ),
        (
            concept: "Scratch-inspired",
            meaningAnswer: "I think I understood this concept the most.",
            lookAnswer: "Yes",
            teachingAnswer: "Probably.",
            scalingAnswer: "I think complex expressions would take up a wide space and would be very complicated to understand.",
            suggestionsAndComments: "Keep the explanation (like in the first example) of the boxes (definition, declaration & parameters)",
        ),
        (
            concept: "Haskell Function-Notation inspired",
            meaningAnswer: "No.",
            lookAnswer: "",
            teachingAnswer: "",
            scalingAnswer: "",
            suggestionsAndComments: ""
        )
    )
)

#questionnaireResult(
    "Mathias Fischler",
    "Mathias Fischler is a student at OST and has visited the functional programming lecture.",
    (
        (
            concept: "Flo-inspired",
            meaningAnswer: "",
            lookAnswer: "No, very confusing with too many arrows and annotations.",
            teachingAnswer: "",
            scalingAnswer: "",
            suggestionsAndComments: ""
        ),
        (
            concept: "Scratch-inspired",
            meaningAnswer: "",
            lookAnswer: "Yes",
            teachingAnswer: "",
            scalingAnswer: "",
            suggestionsAndComments: [
                - No type-annotations, so it's difficult to tell what goes where
                - Type-Hole isn't intuitive
                - Operators should be treated like any other function
            ],
        ),
        (
            concept: "Haskell Function-Notation inspired",
            meaningAnswer: "",
            lookAnswer: "Yes",
            teachingAnswer: "",
            scalingAnswer: "",
            suggestionsAndComments: ""
        )
    ),
    generalComments: "It would be nice to have 'referential-transparency', i.e. hovering over a block to see the type of a specific argument."
)

== Design Decision <design_decision>
Based on the results from the design evalution questionnaires it is clear that design X is best due to X, Y and Z.