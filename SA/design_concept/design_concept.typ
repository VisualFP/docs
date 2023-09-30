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
#sa_table_of_contents()
#pagebreak()

#set page(..sa_page_style(metadata))

// TODO: Move this
== Implementation Options
#include_section("design_concept/content/poc/compiler-platform.typ", heading_increase: 1)


#include_section("design_concept/content/introduction.typ")
#include_section("design_concept/content/design/design.typ")
#include_section("design_concept/content/poc/poc.typ")

#sa_list_of_acronyms()
#sa_bibliography()
#sa_list_of_figures()
