#let include_section(path, heading_increase: 0) = {
  let content = include(path);
  let updated = content.children.map(it =>
    if not it.func() == heading { it }
    else [
      #heading(
        level: it.level + heading_increase,
        it.body
        )
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
  font: "New Computer Modern",
  size: 12pt,
)

#let sa_header_style = (
  numbering: (..args) => {
    let nums = args.pos()
    if (nums.len() == 1) {
      numbering("I", nums.at(0))
    } else {
      numbering("1.1.", ..nums.slice(1))
    }
  }
)

#let sa_heading1_show(it) = {
  if (counter(heading).at(it.location()).at(0) != 1) { pagebreak() }
  v(.5cm)
  text(size: 20pt, [Part #counter(heading).display(): #it.body])
  v(1cm)
}

#let level-2-counter = counter("custom-level2-heading")
#level-2-counter.update(0)
#let sa_heading2_show(it) = {
  level-2-counter.update(n => n + 1)
  locate(loc => {
    counter(heading).update((..n) => {
      (n.pos().at(0), level-2-counter.at(loc).first())
    })
  })
  text(size: 14pt, it)
}
#let sa_heading3_show(it) = { text(size: 13pt, it) }
#let sa_heading4_show(it) = { block(text(size: 12pt, it.body)) }
#let sa_heading5_show(it) = { block(text(size: 12pt, style: "italic", it.body)) }

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
  // custom implementation of the table of contents since typst's 'locate'
  // function doesn't take #show statements that alter the numbering counter
  // into account, resulting in some incorrect numberings in the builtin
  // 'outline'
  align(center, text(size: 15pt, [*Table of Contents*]))
  locate(loc => {
    let first = 0
    let second = 0
    let third = 0
    for h in query(heading.where(h => h.level < 4), loc) {
      let h-page = str(counter(page).at(h.location()).first())
      let filler = box(width: 1fr, repeat[.])
      let h-increment = 0.4cm

      if (h.level == 1) {
        first = first + 1
        third = 0
        let l1-numbering = numbering("I", first)
        let h-entry-body = strong(text(size: 12pt, [#l1-numbering #h.body]))
        box(inset: (top: 0.3cm), outline.entry(h.level, h, h-entry-body, filler, h-page))
      }

      if (h.level == 2) {
        second = second + 1
        third = 0
        let l2-numbering = numbering("1.", second)
        let h-entry-body = [#l2-numbering #h.body]
        box(inset: (left: 1 * h-increment), outline.entry(h.level, h, h-entry-body, filler, h-page))
      }

      if (h.level == 3) {
        third = third + 1
        let l3-numbering = numbering("1.1.", second, third)
        let h-entry-body = [#l3-numbering #h.body]
        box(inset: (left: 2 * h-increment), outline.entry(h.level, h, h-entry-body, filler, h-page))
      }
    }
  })
}

#let sa_bibliography() = {
  pagebreak()
  heading(level: 2, [Bibliography])
  bibliography(
    "bibliography.bib",
    title: none,
    style: "ieee"
  )
}

#let sa_list_of_figures() = {
  pagebreak()
  heading(level: 2, [List of Figures])
  v(1em)
  outline(
    title: none,
    target: figure.where(kind: image),
  )
}

#let sa_list_of_tables() = {
  heading(level: 2, [List of Tables])
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

  Parts of this paper were rephrased using the following tools: 

  - GitHub Copilot #footnote("https://github.com/features/copilot/")
  - Grammarly #footnote("https://www.grammarly.com/")
]
