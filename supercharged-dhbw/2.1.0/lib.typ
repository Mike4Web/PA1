#import "../../codelst/2.0.1/codelst.typ": *
#import "acronym-lib.typ": init-acronyms, print-acronyms, acr, acrpl, acrs, acrspl, acrl, acrlpl, acrf, acrfpl
#import "titlepage.typ": *
#import "confidentiality-statement.typ": *
#import "declaration-of-authorship.typ": *
#import "gender-equality-notice.typ": *
#import "check-attributes.typ": *

// Workaround for the lack of an `std` scope.
#let std-bibliography = bibliography

#let supercharged-dhbw(
  title: none,
  short-title: none,
  authors: (:),
  language: none,
  at-university: none,
  confidentiality-marker: (display: false),
  type-of-thesis: "Praxisarbeit 2",
  type-of-degree: none,
  type-of-degree-specification: none,
  time-of-thesis: none,
  show-confidentiality-statement: true,
  show-declaration-of-authorship: true,
  show-gender-equality-notice: true,
  show-table-of-contents: true,
  show-acronyms: true,
  show-list-of-figures: true,
  show-list-of-tables: true,
  show-code-snippets: true,
  show-appendix: true,
  show-abstract: true,
  show-header: true,
  show-title-in-header: true,
  show-left-logo-in-header: true,
  show-right-logo-in-header: true,
  show-header-divider: true,
  numbering-alignment: center,
  toc-depth: 3,
  acronym-spacing: 5em,
  abstract: none,
  appendix: none,
  acronyms: none,
  confidentiality-statement-content: none,
  university: none,
  university-location: none,
  city: none,
  supervisor: (:),
  date: none,
  date-format: "[day].[month].[year]",
  bibliography: none,
  bib-style: "harvard-cite-them-right",
  logo-left: image("sap-logo.png"),
  // logo-left: none,
  logo-right: image("dhbw.svg"),
  // logo-right: none,
  logo-size-ratio: "1:1",
  body,
) = {
  // check required attributes
  check-attributes(
    title,
    authors,
    language,
    at-university,
    confidentiality-marker,
    type-of-thesis,
    type-of-degree,
    show-confidentiality-statement,
    show-declaration-of-authorship,
    show-table-of-contents,
    show-acronyms,
    show-list-of-figures,
    show-list-of-tables,
    show-code-snippets,
    show-appendix,
    show-abstract,
    show-header,
    show-title-in-header,
    show-left-logo-in-header,
    show-right-logo-in-header,
    show-header-divider,
    numbering-alignment,
    toc-depth,
    acronym-spacing,
    abstract,
    appendix,
    acronyms,
    university,
    university-location,
    supervisor,
    date,
    city,
    bibliography,
    bib-style,
    logo-left,
    logo-right,
    logo-size-ratio,
  )

  // set the document's basic properties
  set document(title: title, author: authors.map(author => author.name))
  let many-authors = authors.len() > 3

  init-acronyms(acronyms)

  // define logo size with given ration
  let left-logo-height = 1.5cm // left logo is always 2.4cm high
  let right-logo-height = 1.5cm // right logo defaults to 1.2cm but is adjusted below
  let logo-ratio = logo-size-ratio.split(":")
  if (logo-ratio.len() == 2) {
    right-logo-height = right-logo-height * (float(logo-ratio.at(1)) / float(logo-ratio.at(0)))
  }

  // save heading and body font families in variables
  let body-font = "Times New Roman"
  let heading-font = "Times New Roman"
  
  // customize look of figure
  set figure.caption(separator: [ --- ], position: bottom)
  show figure.where(kind: image): set text(10pt)
  show figure.where(kind: image): set text(10pt)

  // set body font family
  set text(font: body-font, lang: language, 12pt)
  show heading: set text(weight: "semibold", font: heading-font)

  //heading numbering
  set heading(numbering: "1.")
 
  // set link style for links that are not acronyms
  show link: it => if (
    str(it.dest) not in (acronyms.keys().map(acr => ("acronym-" + acr)))
  ) {
    text(fill: blue, it)
  } else {
    it
  }
  
  show heading.where(level: 1): it => {
    pagebreak()
      it
  }
  show heading.where(level: 2): it => v(1em) + it + v(1em)
  show heading.where(level: 3): it => v(0.75em) + it + v(0.75em)

  titlepage(
    authors,
    date,
    heading-font,
    language,
    left-logo-height,
    logo-left,
    logo-right,
    many-authors,
    right-logo-height,
    supervisor,
    title,
    type-of-degree,
    type-of-degree-specification,
    type-of-thesis,
    time-of-thesis,
    university,
    university-location,
    at-university,
    date-format,
    show-confidentiality-statement,
    confidentiality-marker,
  )
  set page(
    margin: (
      top: 2.5cm, 
      bottom: 2cm,
      left: 2cm,
      right: 4cm),

    // header: {
    //     grid(
    //       columns: (auto, 1fr, auto),
    //       gutter: 0pt,
    //       align(
    //         left, 
    //         image(
    //           "sap-logo.png", 
    //           height: left-logo-height / 2
    //         )
    //       ),
    //       align(
    //         center, 
    //         box[
    //           #set par(leading: 0.5em, justify: false)
    //           #text(
    //             weight: "extralight", 
    //             style: "italic", 
    //             size:11.5pt, 
    //             short-title
    //           )
    //         ]
    //       ),
    //       align(
    //         right, 
    //         image(
    //           "dhbw.svg", 
    //           height: right-logo-height / 2
    //         )
    //       )
    //     )
    //     v(-0.3em)
    //     line(length: 100%)
        
    //   }
    
  )

  // set page numbering to roman numbering
  set page(
    numbering: "I",
    number-align: numbering-alignment,
  )
  counter(page).update(1)

  set par(justify: true, leading: 18pt, spacing: 2.5em)

  if (not at-university and show-confidentiality-statement) {
    confidentiality-statement(
      authors,
      title,
      confidentiality-statement-content,
      university,
      university-location,
      date,
      language,
      many-authors,
      date-format
    )
  }

  if (show-declaration-of-authorship) {
    declaration-of-authorship(
      authors,
      title,
      date,
      language,
      many-authors,
      at-university,
      city,
      date-format
    )
  }

  // set par(justify: true, leading: 18pt)
  // show par: set block(spacing: 2.5em)

  if (show-abstract and abstract != none) {
    align(center + horizon, heading(level: 1, numbering: none)[Abstract])
    text(abstract)
  }
  if (show-gender-equality-notice) {
    gender-equality-notice(
      authors,
      title,
      date,
      language,
      many-authors,
      at-university,
      city,
      date-format
    )
  }

  show outline.entry.where(
    level: 1,
  ): it => {
    v(18pt, weak: true)
    strong(it)
  }

  context {
    let elems = query(figure.where(kind: image), here())
    let count = elems.len()

    heading("Abbildungsverzeichnis", numbering: none)
    
    if (show-list-of-figures and count > 0) {
      // outline(
      //   title: [#heading(level: 3)[#if (language == "de") {
      //     [Abbildungsverzeichnis]
      //   } else {
      //     [List of Figures]
      //   }]],
      //   target: figure.where(kind: image)
      // )
      outline(
        title: none,
        target: figure.where(kind: image),
      )
    }
  }

  context {
    let elems = query(figure.where(kind: table), here())
    let count = elems.len()

    heading("Tabellenverzeichnis", numbering: none)
 
    if (show-list-of-tables and count > 0) {
      /*outline(
        title: [#heading(level: 3)[#if (language == "de") {
          [Tabellenverzeichnis]
        } else {
          [List of Tables]
        }]],
        target: figure.where(kind: table),
      )*/
      outline(
        title: none,
        target: figure.where(kind: table),
      )
    }
  }

  context {
    let elems = query(figure.where(kind: raw), here())
    let count = elems.len()

    heading("Codeverzeichnis", numbering: none)

    if (show-code-snippets and count > 0) {
      // outline(
      //   title: [#heading(level: 3)[#if (language == "de") {
      //     [Codeverzeichnis]
      //   } else {
      //     [Code Snippets]
      //   }]],
      //   target: figure.where(kind: raw),
      // )
      outline(
        title: none,
        target: figure.where(kind: raw),
      )
    }
  }

  set par(justify: true, leading: 8pt)
  show par: set block(spacing: 2.5em)
  
  if (show-table-of-contents) {
    outline(title: [#if (language == "de") {
      [Inhaltsverzeichnis]
    } else {
      [Table of Contents]
    }], indent: auto, depth: toc-depth)
  }
    
  if (show-acronyms and acronyms != none and acronyms.len() > 0) {
    print-acronyms(language, acronym-spacing)
  }

  set par(justify: true, leading: 18pt)
  show par: set block(spacing: 2.5em)

  // if (show-abstract and abstract != none) {
  //   align(center + horizon, heading(level: 1, numbering: none)[Abstract])
  //   text(abstract)
  // }
  
  // reset page numbering and set to arabic numbering
  set page(
    numbering: "1",
    footer: context align(numbering-alignment, numbering(
    "1 / 1", 
    ..counter(page).get(),
    ..counter(page).at(<end>),
    ))
  )
  counter(page).update(1)

  body

  [#metadata(none)<end>]
  // reset page numbering and set to alphabetic numbering
  set page(
    numbering: "a",
    footer: context align(numbering-alignment, numbering(
      "a", 
      ..counter(page).get(),
    ))
  )
  counter(page).update(1)

  // Display bibliography.
  if bibliography != none {
    set std-bibliography(title: [#if (language == "de") {
      [Literatur]
    } else {
      [References]
    }], 
    style: bib-style)
    bibliography
  }

  if (show-appendix and appendix != none) {
    heading(level: 1, numbering: none)[#if (language == "de") {
      [Anhang]
    } else {
      [Appendix]
    }]
    set heading(outlined: false, numbering: "1.")
    appendix
  }
  
}