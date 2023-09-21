#import "style.typ": *

#set text(..sa_text_style)
#set heading(..sa_header_style)

#sa_title_page(
  "Studienarbeit",
  "VisualFP");
#sa_table_of_contents()
#pagebreak()

#set page(..sa_page_style)
#include_section("content/introduction.typ")

#sa_bibliography()
#sa_list_of_figures()

