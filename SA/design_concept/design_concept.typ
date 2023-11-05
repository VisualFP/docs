#import "../style.typ": *
#import "../acronyms.typ": *

#set text(..sa_text_style)
#set heading(..sa_header_style)
#show heading.where(level: 1): sa_heading1_show
#show heading.where(level: 2): sa_heading2_show
#show heading.where(level: 3): sa_heading3_show
#show heading.where(level: 4): sa_heading4_show
#show heading.where(level: 5): sa_heading5_show

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

#include_section("design_concept/appendix/appendix.typ")