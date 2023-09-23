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

  grid(
    columns: 2,
    gutter: 1fr,
    move(dy: 0.4cm, image("static/ifs_logo.png", height: 2cm)),
    image("static/ost_logo.svg", height: 3cm)
  )

  v(2.5cm)
  
  align(center)[
    #text(30pt, title, weight: "bold")
    #v(-1.5em)
    #text(20pt, subtitle)
    #v(0.5cm)

    #set text(size: 15pt)
    Department of Computer Science \
    OST - University of Applied Sciences \
    Campus Rapperswil-Jona \

    #v(1cm)

    Autumn Term 2023 \

    #v(1cm)

    Authors: Lukas Streckeisen, Jann Flepp \
    Advisor: Prof. Dr. Farhad Mehta \
    Project Partner: IFS Institute for Software \
    External Co-Examiner: \
    Internal Co-Examiner: \
  ]
  pagebreak()
}

#let sa_text_style = (
  font: "New Computer Modern"
)

#let sa_header_style = (
  numbering: "1."
)

#let sa_header = align(horizon)[
  #v(1.5cm)
  IFS - Institute for Software
  #h(2fr)
  OST - University of Applied Sciences
  #v(0.5cm)
]

#let sa_footer = locate(loc => {
    if counter(page).at(loc).first() > 0 { align(horizon)[
      Lukas Streckeisen, Jann Flepp
      #h(0.5fr)
      Studienarbeit - VisualFP
      #h(1fr)
      Page #counter(page).display("1 of 1", both: true)
      #v(1.5cm)
    ]}
})

#let sa_page_style = (
  header: sa_header,
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
