#let include_section(path, heading_increase: 0) = {
  let content = include(path);
  let updated = content.children.map(it =>
      if not it.func() == heading { it }
      else [
        #heading(level: it.level + heading_increase, it.body)
        #it.at("label", default: none)
      ]
  )
  for c in updated { c }
}

#let sa_title_page(data) = {
  counter(page).update(0)

  grid(
    columns: 2,
    gutter: 1fr,
    move(dy: 0.4cm, image("static/ifs_logo.png", height: 2cm)),
    image("static/ost_logo.svg", height: 3cm)
  )

  v(2.5cm)
  
  align(center)[
    #text(30pt, data.title, weight: "bold")
    #v(-1.5em)
    #text(20pt, data.description)
    #v(0.5cm)

    #set text(size: 14pt)
    #data.organization

    #v(1cm)
    #data.thesis, #data.term
    
    #v(1cm)


    #v(4cm)
    
    #let ecell(ct) = rect(stroke: none, width: 100%)[
      #align(left)[#ct]
    ]
    
    #grid(
      columns: (1fr, 1fr),
      rows: (auto, auto, auto, auto, auto),
      ecell()[*Authors:*], ecell()[#data.authors],
      ecell()[*Advisor:*], ecell()[#data.advisor],
      ecell()[*Project Partner:*], ecell()[#data.partner],
      ecell()[*External Co-Examiner:*], ecell()[#data.external-co-examiner],
      ecell()[*Internal Co-Examiner:*], ecell()[#data.external-co-examiner]
    )
  ]
  pagebreak()
}

#let sa_text_style = (
  font: "New Computer Modern"
)

#let sa_header_style = (
  numbering: "1."
)

#let ht-first = state("page-first-section", [])
#let ht-last = state("page-last-section", [])
// inspired by https://stackoverflow.com/questions/76363935/typst-header-that-changes-from-page-to-page-based-on-state
#let get-last-heading() = {
  locate(loc => [
    #let first-heading = query(heading.where(level: 1), loc).find(h => h.location().page() == loc.page())
    #let last-heading = query(heading.where(level: 1), loc).rev().find(h => h.location().page() == loc.page())
        #{
        if not first-heading == none {
            ht-first.update([
                #counter(heading).at(first-heading.location()).at(0). #first-heading.body
            ])
            ht-last.update([
                #counter(heading).at(last-heading.location()).at(0). #last-heading.body
            ])
        ht-first.display()
      } else {
        ht-last.display()
      }}
  ])
}

#let sa_header(metadata) = {
  [#metadata.title #h(1fr) #get-last-heading()]
}

#let sa_footer(metadata) = locate(loc => {
  // reset footnote numbering after each page. Subject change in a future
  // typst release
  counter(footnote).update(_ => 0)

  if counter(page).at(loc).first() > 0 {
    grid(
      columns: (1fr, 1fr), 
      align(left)[#metadata.authors-short],
      align(right)[Page #counter(page).display("1 of 1", both: true)]
    )
  }
})

#let sa_page_style(metadata) = (
  header: sa_header(metadata),
  footer: sa_footer(metadata)
)

#let sa_table_of_contents(depth: none) = {
  show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }
  outline(indent: auto, depth: depth)
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
  v(1em)
  outline(
    title: none,
    target: figure.where(kind: image),
  )
}

#let sa_list_of_tables() = {
  [= List of Tables]
  outline(
    title: none,
    target: figure.where(kind: "table")
  )
}

#let sa_disclaimer() = [
  #pagebreak()
  #set page(header: none, footer: none)

  #align(center)[
    #text(weight: "bold", size: 1.5em, "Disclaimer")
  ]

  Parts of this thesis were reworded using the following tools: 

  - GitHub Copilot #footnote("https://github.com/features/copilot/")
  - Grammarly #footnote("https://www.grammarly.com/")
]
