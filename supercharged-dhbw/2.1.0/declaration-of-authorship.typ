#let declaration-of-authorship(authors, title, date, language, many-authors, at-university, city, date-format) = {
  pagebreak()
  v(2em)
  text(size: 20pt, weight: "bold", if (language == "de") {
    "Selbstständigkeitserklärung"
  } else {
    "Declaration of Authorship"
  })

  v(1em)

  if (authors.len() == 1) {
    par(justify: true,leading: 18pt,[
      Gemäß Ziffer 1.1.12 der Anlage 1 zu §§ 3, 4 und 5 der Studien- und Prüfungsordnung für die Bachelorstudiengänge im Studienbereich Wirtschaftsinformatik der Dualen Hochschule Baden- Württemberg vom 22.05.2024. Ich versichere hiermit, dass ich meine Arbeit mit dem Thema:
    ])
    v(1.5em)
    align(center,
      text(weight: "bold", title)
    )
    v(1.5em)
    par(justify: true, leading: 18pt,[
      selbstständig verfasst und keine anderen als die angegebenen Quellen und Hilfsmittel benutzt habe. Desweiteren versichere ich, dass die eingereichte elektronische Fassung mit der gedruckten Fassung übereinstimmt.
    ])
  }

  let end-date = if (type(date) == datetime) {
    date
  } else {
    date.at(1)
  }

  v(2em)
  if (at-university) {
    text([#city, #end-date.display(date-format)])
  } else {
    let connection-string
    if (language == "de") {
      connection-string = " und "
    } else {
      connection-string = " and "
    }

    text([#authors.map(author => author.company.city).dedup().join(", ", last: connection-string), #end-date.display(date-format)])
  }

  v(1em)
  if (many-authors) {
    grid(
      columns: (1fr, 1fr),
      gutter: 20pt,
      ..authors.map(author => {
        v(3.5em)
        line(length: 80%)
        author.name
      })
    )
  } else {
    for author in authors {
      v(4em)
      line(length: 40%)
      author.name
    }
  }
}