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

= Project Documentation
#include_section("project_documentation/content/introduction.typ", heading_increase: 1)
#include_section("project_documentation/content/project_method.typ", heading_increase: 1)
#include_section("project_documentation/content/project_plan.typ", heading_increase: 1)
#include_section("project_documentation/content/used_tools.typ", heading_increase: 1)
#include_section("project_documentation/content/risk_management.typ", heading_increase: 1)
#include_section("project_documentation/content/meeting_minutes/meeting_minutes.typ", heading_increase: 1)

= Appendix
#sa_list_of_acronyms()
#sa_bibliography()
#sa_list_of_figures()
#sa_list_of_tables()
#sa_disclaimer()
