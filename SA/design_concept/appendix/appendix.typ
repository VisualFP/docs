#import "../../style.typ": *
#import "../../acronyms.typ": *

#part("Appendix")

#include_section("design_concept/appendix/questionnaire_answers.typ")

#sa_list_of_acronyms() <list_of_acronyms>
#sa_bibliography()
#sa_list_of_figures()
#sa_list_of_tables()
#sa_list_of_listings()

= Design Evaluation Questionnaire Template <appendix_design_eval_questionnaire>
#for n in ("1", "2", "3", "4", "5", "6") {
  image("../static/concept_questionnaire_" + n + ".png")
}

#sa_disclaimer()