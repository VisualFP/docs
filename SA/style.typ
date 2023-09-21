#let include_section(path, heading_increase: 0) = {
  let content = include(path);
  let updated = content.children.map(it =>
      if not it.func() == heading { it }
      else { heading(level: it.level + heading_increase, it.body) }
  )
  for c in updated { c }
}

#let sa_title_page(title, subtitle) = {
  counter(page).update(0)
  align(center)[
    #text(40pt, title, weight: "bold")
    #v(-1.5em)
    #text(30pt, subtitle)
  ]
  v(5cm)
  text(15pt, "Advisor: Farhad Mehta")
  v(1fr)
  image("static/ost_logo.svg", height: 3cm)
  pagebreak()
}

#let sa_text_style = (
  font: "New Computer Modern"
)

#let sa_header_style = (
  numbering: "1."
)

#let sa_footer = locate(loc => {
    if counter(page).at(loc).first() > 0 { align(horizon)[
      Studienarbeit - VisualFP
      #h(1fr)
      #counter(page).display("1/1", both: true)
      #h(1fr)
      #box()[
        Lukas Streckeisen \
        Jann Flepp
      ]
    ]}})

#let sa_page_style = (
  footer: sa_footer
)

#let sa_table_of_contents() = {
  show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(indent: auto)
}

#let sa_bibliography() = {
  pagebreak()
  [= Bibliography]
  bibliography(
    "bibliography.bib",
    title: none,
    style: "ieee"
  )
}

#let sa_list_of_figures() = {
  pagebreak()
  [= List of Figures]
  outline(
    title: none,
    target: figure.where(kind: image),
  )
}
