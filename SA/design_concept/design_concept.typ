#import "../style.typ": *
#import "../acronyms.typ": *

#set text(..sa_text_style)
#set heading(..sa_header_style)

#let metadata = (
  title: [VisualFP],
  description: [Designing a Visual, Block-Based Environment to Create & Execute Haskell Code],
  organization: [Department of Computer Science \ OST - University of Applied Sciences \ Campus Rapperswil-Jona],
  thesis: [Term Paper],
  term: [Autumn Term 2023],
  authors: [Lukas Streckeisen, Jann M. Flepp],
  authors-short: [L. Streckeisen, J. Flepp],
  advisor: [Prof. Dr. Farhad D. Mehta],
  partner: [IFS Institute for Software],
  external-co-examiner: [],
  internal-co-examiner: []
);

#sa_title_page(metadata);
#sa_table_of_contents(depth: 3)
#pagebreak()

#set page(..sa_page_style(metadata))

#include_section("design_concept/content/introduction/introduction.typ")
#include_section("design_concept/content/design/design.typ")
#include_section("design_concept/content/poc/poc.typ")

#sa_list_of_acronyms()
#sa_bibliography()
#sa_list_of_figures()
#sa_list_of_tables()
#sa_disclaimer()

= Design Evaluation Questionnaire Template <appendix_design_eval_questionnaire>
#for n in ("1", "2", "3", "4", "5", "6") {
  image("static/concept_questionnaire_" + n + ".png")
}