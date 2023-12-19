// Inspired by https://github.com/Ciolv/typst-template-bachelor-thesis/blob/main/acronyms.typ

#let acronyms = (
  AST: "Abstract Syntax Tree - Tree representation of a program's structure",
  API: "Application Programming Interface",
  FP: "Functional Programming",
  SA: "Studienarbeit",
  LSP: "Language Server Protocol",
  GHC: "Glasgow Haskell Compiler",
  PoC: "Proof of Concept",
  GTK: "GIMP ToolKit - Toolkit for creating graphical user interfaces",
  OST: "Eastern Switzerland University of Applied Sciences",
  FFI: "Foreign Functional Interface - Interface between two different programming languages",
  FRP: [Functional Reactive Programming - A concept that defines types and functions for interactive applications written in a functional language @frp_elliott_hudak],
  HTML: "HyperText Markup Language - Language to define the content structure of e.g. web sites",
  CSS: "Cascading Style Sheets - Language to style the content of e.g. web sites",
  DOM: "Document Object Model - Tree representation of e.g. a HTML document",
  JS: "JavaScript",
  OS: "Operating System",
  UI: "User Interface",
  UC: "Use Case",
  NFR: "Non-Functional Requirement"
)

#let usedAcronyms = state("usedDic", (:))

#let ac(ac) = {
  if (not acronyms.keys().contains(ac)) {
    return rect(
      fill: red,
      inset: 8pt,
      radius: 4pt,
      [*Error*: Acronym *#ac* not found!],
    )
  }

  usedAcronyms.display(usedDic => {
    return link(label("list_of_acronyms"))[#ac]
  });

  usedAcronyms.update(usedDic => {
    usedDic.insert(ac, true)
    return usedDic
  })
}

#let sa_list_of_acronyms() = {
  locate(loc => if (usedAcronyms.final(loc).len() > 0) {
      heading(level: 1, "Glossary & List of Acronyms")
      v(1em)
      terms(
        tight: false,
        separator: [: #h(0.6em)],
        ..usedAcronyms
          .final(loc)
          .pairs()
          .map(key => key.at(0))
          .sorted()
          .map(key => terms.item(key, acronyms.at(key)))
      )
  })
}
