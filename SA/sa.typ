#import "style.typ": *

#set text(..sa_text_style)
#set heading(..sa_header_style)

#let metadata = (
  title: [VisualFP],
  description: [Designing a Visual, Block-Based Environment to Create & Execute Haskell Code],
  organization: [Department of Computer Science \ OST - University of Applied Sciences \ Campus Rapperswil-Jona],
  thesis: [Student Thesis],
  term: [Autumn Term 2023],
  authors: [Lukas Streckeisen, Jann M. Flepp],
  authors-short: [L. Streckeisen, J. Flepp],
  advisor: [Farhad D. Mehta],
  partner: [IFS Institute for Software],
  external-co-examiner: [],
  internal-co-examiner: []
);

#sa_title_page(metadata);
#sa_table_of_contents()
#pagebreak()

#set page(..sa_page_style(metadata))
#include_section("content/introduction.typ")

= Existing tools
#include_section("content/tool_research/snap.typ", heading_increase: 1)
#include_section("content/tool_research/eros.typ", heading_increase: 1)
#include_section("content/tool_research/flo.typ", heading_increase: 1)

#sa_bibliography()
#sa_list_of_figures()

