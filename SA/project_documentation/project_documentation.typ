#import "../style.typ": *
#import "../acronyms.typ": *

#set text(..sa_text_style)
#set heading(..sa_header_style)
#show heading.where(level: 1): sa_heading1_show
#show heading.where(level: 2): sa_heading2_show
#show heading.where(level: 3): sa_heading3_show
#show heading.where(level: 4): sa_heading4_show

#let metadata = (
  title: [VisualFP],
  description: [Project documentation],
  organization: [Department of Computer Science \ OST - Eastern Switzerland University of Applied Sciences \ Campus Rapperswil-Jona],
  thesis: [Student Research Project],
  term: [Autumn Term 2023],
  authors: [Lukas Streckeisen, Jann M. Flepp],
  authors-short: [L. Streckeisen, J. Flepp],
  advisor: [Prof. Dr. Farhad D. Mehta],
  partner: [IFS Institute for Software],
  external-co-examiner: [],
  internal-co-examiner: []
);

#sa_title_page(metadata)
#sa_table_of_contents()

#set page(..sa_page_style(metadata))

#part("Project Documentation")
#include_section("project_documentation/content/introduction.typ")
#include_section("project_documentation/content/project_method.typ")
#include_section("project_documentation/content/project_plan.typ")
#include_section("project_documentation/content/used_tools.typ")
#include_section("project_documentation/content/quality_assurance.typ")
#include_section("project_documentation/content/risk_management.typ")
#include_section("project_documentation/content/time_tracking.typ")
#include_section("project_documentation/content/personal_reports.typ")
#include_section("project_documentation/content/meeting_minutes/meeting_minutes.typ")

#part("Appendix")
#sa_list_of_acronyms() <list_of_acronyms>
#sa_bibliography()
#sa_list_of_figures()
#sa_list_of_tables()
#sa_disclaimer()
