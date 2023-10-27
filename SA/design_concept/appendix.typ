#import "../style.typ": *
#import "../acronyms.typ": *

#sa_list_of_acronyms()
#sa_bibliography()
#sa_list_of_figures()
#sa_list_of_tables()
#sa_disclaimer()

= Design Evaluation Questionnaire Template <appendix_design_eval_questionnaire>
#for n in ("1", "2", "3", "4", "5", "6") {
  image("static/concept_questionnaire_" + n + ".png")
}

#pagebreak()

= Design Suggestion from Eliane Schmidli <design_suggestion_eliane_schmidli>
#figure(
    image("static/general_comments_eliane_schmidli_1.png")
)

#figure(
    image("static/general_comments_eliane_schmidli_2.png")
)