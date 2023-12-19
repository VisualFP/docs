// Inspired by https://github.com/Ciolv/typst-template-bachelor-thesis/blob/main/acronyms.typ

#let acronyms = (
  AST: "Abstract Syntax Tree",
  API: "Application Programming Interface",
  FP: "Functional Programming",
  SA: "Studienarbeit",
  LSP: "Language Server Protocol",
  GHC: "Glasgow Haskell Compiler",
  PoC: "Proof of Concept",
  GTK: "GIMP ToolKit",
  OST: "Eastern Switzerland University of Applied Sciences",
  FFI: "Foreign Functional Interface",
  FRP: "Functional Reactive Programming",
  HTML: "HyperText Markup Language",
  CSS: "Cascading Style Sheets",
  DOM: "Document Object Model",
  JS: "JavaScript",
  OS: "Operating System",
  UI: "User Interface",
  UC: "Use Case",
  NFR: "Non-Functional Requirement"
)

#let acronym-descriptions = (
  AST: [Tree representation of a program's structure],
  GTK: [Toolkit for creating graphical user interfaces],
  FFI: [Interface between two different programming languages],
  FRP: [A concept that defines types and functions for interactive applications written in a functional language @frp_elliott_hudak],
  HTML: [Language to define the content structure of, e.g., web sites],
  CSS: [Language to style the content of, e.g., web sites],
  DOM: [Tree representation of, e.g., a HTML document],
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
    let label = label("list_of_acronyms")
    if (usedDic.keys().contains(ac)) {
      return link(label, ac)
    }
    return link(label)[#ac (#acronyms.at(ac))]
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
          .map(key => {
            let meaning = acronyms.at(key)
            let description = if (acronym-descriptions.keys().contains(key)) [ \- #acronym-descriptions.at(key)] else []
            terms.item(key, meaning + description)
          })
      )
  })
}
