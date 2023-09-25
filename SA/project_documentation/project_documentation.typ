#import "../style.typ": *

#set text(..sa_text_style)
#set heading(..sa_header_style)

#let metadata = (
  title: [VisualFP],
  description: [Project documentation],
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
#include_section("project_documentation/content/introduction.typ")
#include_section("project_documentation/content/used_tools.typ")
#include_section("project_documentation/content/risk_management.typ")

#sa_bibliography()
#sa_list_of_figures()
