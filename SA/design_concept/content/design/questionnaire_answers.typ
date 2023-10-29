#import "@preview/tablex:0.0.5": tablex, cellx

= Questionnaire Results <design_eval_results>
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
        heading(level: 5, numbering: none, concept)  // the heading_increase don't seem to affect this
        figure(
            tablex(
                columns: 2,
                stroke: .5pt,

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
            caption: "Design questionnaire answers for " + concept + " design from " + participant
        )
    }

    if (generalComments != "") {
        heading(level: 5, numbering: none, "General Comments")
        generalComments
    }
}

#questionnaireResult(
    "Prof. Dr. Farhad Mehta",
    "Prof. Dr. Farhad Mehta is a lecturer at OST and advisor of this project.",
    (
        (
            concept: "Flo-inspired",
            meaningAnswer: "Not really. Semantics & the arrows are unclear (insertion or reverse result)",
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
        The questionnaire may not do full justice to the visual programming methods since it only reviews the end state, and not the method of programming.

        All methods seem to have a "bottom-up" strategy on constructing programs (i.e. start with small steps with what is available, and tinker with it unit you come up with something that you can use).
        The imperative paradigm forces one to do this (top level blocks are always ";", and therefore uninteresting).
        In FP, we are able to design our programs "top-down", starting with a specification (type definition at least).
        This specification often admits a top-level function that is often interesting (e.g. filter, map), with further "holes" that can similarly be filled successively.

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

#questionnaireResult(
    "Lukas Buchli",
    "Lukas Buchli is a technical employee at the institute for software at OST",
    (
        (
            concept: "Flo-inspired",
            meaningAnswer: "I don't know Flo and for me it is not a very obvious notation. I can guess the semantics though.",
            lookAnswer: "It looks a bit cluttered to me.",
            teachingAnswer: "I think I would visualize it differently.",
            scalingAnswer: "It will probably clutter quite fast, I already find 'Product of Numbers' hard to read. I don't see a simple way to split it into multiple parts.",
            suggestionsAndComments: "Maybe multiple argument functions can have the argument in the same block instead of the :apply notation? I understand that this is to highlight currying, but I think you could also explain this by only highlighting the empty argument boxes. This would reduce clutter and make it more scalable."
        ),
        (
            concept: "Scratch-inspired",
            meaningAnswer: "I find this quite easy to read. The only confusing bits I find are the type annotations (purple), especially because it mixes up constraints and types, but also because it could be interpreted as being part of the lower layer (i.e. in 'Map Add 5 Function' it could be interpreted as describing the (+) and not the 5).",
            lookAnswer: "Yes, it looks clean and colorful.",
            teachingAnswer: "Yes.",
            scalingAnswer: "It seems to clutter up less fast, and even then, it could be possible to split it up into multiple towers with references to each other (maybe when visualizing Haskell code, definitions in 'where' or in a let expression could be a separate tower, this would also solve the problem of multiple references.",
            suggestionsAndComments: [
                - Type annotations: There could be a separate type annotation tower that can be enabled or disabled. Or it should be more obvious where the type annotation applies. At the moment it looks like the types are arguments to the function (which is actually the case in GHC Core or with the TypeApplications extension, but not in normal Haskell). Constraints should be ignored or handled differently.
                - Infix functions should look like +, not (+), if they are visualized in an infix way.
            ],
        ),
        (
            concept: "Haskell Function-Notation inspired",
            meaningAnswer: "I find this one difficult to read. I especially have difficulty with the apparent mix-up of types and values. It seems that the last part of an arrow chain is the return type, and the rest is a value if present and a type if partially applied? I like the currying visualization with nested boxes though.",
            lookAnswer: "It looks more formal than Scratch-inspired, which to me is a disadvantage. It also has more text.",
            teachingAnswer: "No, I find it difficult to describe the semantics of single components. Maybe I'd be able to if you gave me an explanation of their meaning.",
            scalingAnswer: "I guess it would be possible to use cross references. It looks less cluttered than the Flo -inspired one.",
            suggestionsAndComments: "It seems like the single component semantics are not entirely consistent here."
        )
    ),
    generalComments: [
        - I think it is important to have clear and simple semantics for single components of your visualization. In order to ensure this, it may be useful to think about reduction rules for your visualization.
        - I like your use of color and how it distinguishes different things (types, value, arguments, ...)
        - Type polymorphism and constraints seems to be a challenge to visualize. For polymorphic types, TypeApplications may be a useful inspiration (i.e. receive types as a different kind of argument to functions). Constraints could maybe then be applied to these kinds of type arguments. Con of this approach is that in Haskell, you don't pass types as arguments.
        - Do you also plan on visualizing type definitions?
        - My vote is on a Scratch-inspired version.
    ]
)

#questionnaireResult(
    "Eliane Schmidli",
    "Eliane Schmidli is a master student & scientific assistant at the institute for software at OST",
    (
        (
            concept: "Flo-inspired",
            meaningAnswer: [
                Ja, ich bin mir jedoch nicht sicher, ob man es ohne Haskell Erfahrung versteht. 
                Ausserdem hätte ich die Pfeile fürs Verständnis eher von unten nach oben gemacht (siehe erste Box).
                Ich möchte nicht vom Resultat zurück gehen, sondern wende ein Argument nach dem anderen an und gelange am Schluss zum Resultat.
                (wenn man jedoch die Argumente im UI dann so hinziehen kann macht von unten nach oben mehr Sinn)
            ],
            lookAnswer: "Grundsätzlich ja, es wird jedoch schnell unübersichtlich. Es bräuchte noch mehr Farbe und die Pfeile könnten je nach Funktionalität unterschiedlich gestaltet werden.",
            teachingAnswer: "So wie es jetzt ist, eher nicht, da es zu unübersichtlich ist. Aber wenn es etwas ausgereifter ist, denke ich schon. Man kann es ja dann wahrscheinlich Schritt für Schritt einblenden, bzw. zusammensetzen.",
            scalingAnswer: "Ich glaube es wird immer unübersichtlicher...",
            suggestionsAndComments: "Ich finde die Rekursion nicht so verständlich. Man sieht nicht, dass product rekursiv aufgerufen wird. Ich hätte die match Box als noch mit product beschriftet und mit Farbe gearbeitet. Die ::Num a -> a Box verwirrt mich. Ausserdem fände ich es besser die Applikation in einer Box zu machen"
        ),
        (
            concept: "Scratch-inspired",
            meaningAnswer: "Ja, ich finde hier sieht man am besten, wie die Parameter in einander verschachtelt sind",
            lookAnswer: "Ja, die Farben sind mega gut fürs Verständnis und es ist sehr übersichtlich. Rein visuell der beste Vorschlag.",
            teachingAnswer: "Gut ist hier, dass man sieht wie man Schritt für Schritt etwas einblenden könnte. Ich weiss jedoch nicht, ob es wirklich einen Mehrwert gegenüber dem Code bietet... Bzw. Man sieht wie im Code die Zusammenhänge nicht ganz",
            scalingAnswer: "Ich könnte mir vorstellen, dass es schnell zu überladen wird",
            suggestionsAndComments: [
                - Type annotations: There could be a separate type annotation tower that can be enabled or disabled. Or it should be more obvious where the type annotation applies. At the moment it looks like the types are arguments to the function (which is actually the case in GHC Core or with the TypeApplications extension, but not in normal Haskell). Constraints should be ignored or handled differently.
                - Infix functions should look like +, not (+), if they are visualized in an infix way.
            ],
        ),
        (
            concept: "Haskell Function-Notation inspired",
            meaningAnswer: "Ich finde es schlechter verständlich als der erste Vorschlag. Ich könnte mir aber vorstellen, dass eine Kombination aus diesem und dem ersten funktionieren könnte.",
            lookAnswer: "Farben und Boxen finde ich gut und dass die Applikation und der Zusammenhang zwischen Argumenten und den Typen besser sichtbar ist. Aber es sieht irgendwie zu mathematisch aus :) Ich könnte mir vorstellen, dass das Personen abschrecken könnte",
            teachingAnswer: "So nicht unbedingt. Aber wenn man es mit dem ersten Vorschlag verbinden würde, denke ich schon",
            scalingAnswer: "Ich glaube, es wird mega kompliziert mit der Verschachtelung. Ich finde die Pfeile beim ersten Vorschlag besser",
            suggestionsAndComments: "It seems like the single component semantics are not entirely consistent here."
        )
    ),
    generalComments: [See @design_suggestion_eliane_schmidli]
)