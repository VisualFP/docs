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
  FFI: "Foreign Functional Interface"
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
    if(usedDic.keys().contains(ac)) {
      return ac
    }
    return ac + " (" + acronyms.at(ac) + ")"
  });

  usedAcronyms.update(usedDic => {
    usedDic.insert(ac, true)
    return usedDic
  })
}

#let sa_list_of_acronyms() = {
  locate(loc => if (usedAcronyms.final(loc).len() > 0) {
      heading(level: 2, "List of Acronyms")
      v(1em)
      terms(..usedAcronyms
        .final(loc)
        .pairs()
        .map(key => key.at(0))
        .sorted()
        .map(key => terms.item(key, acronyms.at(key))))
  })
}
