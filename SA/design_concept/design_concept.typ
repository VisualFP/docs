#import "../style.typ": *
#import "../acronyms.typ": *

#set text(..sa_text_style)

#show heading.where(level: 1): sa_heading1_show
#show heading.where(level: 2): sa_heading2_show
#show heading.where(level: 3): sa_heading3_show
#show heading.where(level: 4): sa_heading4_show

#let metadata = (
  title: [VisualFP],
  description: [Designing a Visual, Block-Based Environment to Create & Execute Haskell Code],
  organization: [Department of Computer Science \ OST - Eastern Switzerland University of Applied Sciences \ Campus Rapperswil-Jona],
  thesis: [Student Research Project],
  term: [Autumn Term 2023],
  authors: [Lukas Streckeisen, Jann M. Flepp],
  authors-short: [L. Streckeisen, J. Flepp],
  advisor: [Prof. Dr. Farhad D. Mehta],
  partner: [IFS Institute for Software],
  external-co-examiner: [],
  internal-co-examiner: []
)

#sa_title_page(metadata);

#include_section("design_concept/abstract.typ")
#include_section("design_concept/mgmt_summary.typ")

#set heading(..sa_header_style)
#sa_table_of_contents()

#set page(..sa_page_style(metadata))

#include_section("design_concept/content/introduction/introduction.typ")
#include_section("design_concept/content/design/design.typ")
#include_section("design_concept/content/poc/poc.typ")
#include_section("design_concept/content/results/results.typ")
#include_section("design_concept/appendix/appendix.typ")