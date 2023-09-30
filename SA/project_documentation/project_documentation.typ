#import "../style.typ": *
#import "../acronyms.typ": *

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
#sa_table_of_contents(depth: 2)
#pagebreak()

#set page(..sa_page_style(metadata))
#include_section("project_documentation/content/introduction.typ")
#include_section("project_documentation/content/project_method.typ")
#include_section("project_documentation/content/project_plan.typ")
#include_section("project_documentation/content/used_tools.typ")
#include_section("project_documentation/content/risk_management.typ")
#include_section("project_documentation/content/meeting_minutes/meeting_minutes.typ")

#sa_list_of_acronyms()
#sa_bibliography()
#sa_list_of_figures()
#sa_list_of_tables()
