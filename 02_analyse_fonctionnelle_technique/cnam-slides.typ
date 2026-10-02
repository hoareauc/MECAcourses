// cnam-slides.typ
// Modèle de présentation de chapitre Typst (Format 16:9) aux couleurs du Cnam

#let cnam-red = rgb("#A60038")
#let cnam-dark-red = rgb("#7B0029")
#let cnam-blue = rgb("#1B254B")
#let cnam-dark = rgb("#1E293B")
#let cnam-gray = rgb("#64748B")
#let cnam-light-gray = rgb("#F8FAFC")
#let cnam-card-bg = rgb("#FFFFFF")

#let slide-counter = counter("slide")

#let chapter-presentation(
  chapter-num: "01",
  chapter-title: "Titre du Chapitre",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  institution: "Cnam — Ingénierie Mécanique",
  session: "Cours du soir HTT — FAB113 (60h)",
  doc
) = [
  #set document(title: chapter-title, author: author)
  
  #set page(
    paper: "presentation-16-9",
    margin: (x: 1.8cm, top: 2.2cm, bottom: 1.4cm),
    fill: cnam-light-gray,
    header: context {
      let cur-slide = slide-counter.get().first()
      if cur-slide > 1 [
        #grid(
          columns: (1fr, auto),
          align: (left + horizon, right + horizon),
          [
            #text(size: 11pt, weight: "bold", fill: cnam-red, font: ("Arial", "Segoe UI"))[
              le cnam #h(8pt)
            ]
            #text(size: 9.5pt, fill: cnam-gray)[
              | #h(8pt) FAB113 — Chapitre #chapter-num : #chapter-title
            ]
          ],
          [
            #text(size: 9pt, fill: cnam-blue, weight: "bold")[
              #session
            ]
          ]
        )
        #v(-4pt)
        #line(length: 100%, stroke: 0.8pt + cnam-red)
      ]
    },
    footer: context {
      let cur-slide = slide-counter.get().first()
      if cur-slide > 1 [
        #line(length: 100%, stroke: 0.4pt + cnam-gray.lighten(60%))
        #v(2pt)
        #grid(
          columns: (1fr, 1fr),
          align: (left + horizon, right + horizon),
          [
            #text(size: 8pt, fill: cnam-gray)[
              #author — Conservatoire National des Arts et Métiers
            ]
          ],
          [
            #text(size: 8.5pt, fill: cnam-red, weight: "bold")[
              Slide #slide-counter.display("1 / 1", both: true)
            ]
          ]
        )
      ]
    }
  )

  #set text(
    font: ("Arial", "Segoe UI", "Calibri"),
    size: 14pt,
    fill: cnam-dark,
    lang: "fr"
  )
  #set par(leading: 0.65em)

  #doc
]

// Slide de titre du chapitre
#let chapter-title-slide(
  chapter-num: "01",
  chapter-title: "Titre du Chapitre",
  subtitle: "Sous-titre ou objectifs de la séance",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  institution: "Conservatoire National des Arts et Métiers",
  module: "UE FAB113 — Cours du soir HTT (60h à distance)"
) = {
  slide-counter.step()
  page(header: none, footer: none, fill: cnam-blue)[
    #v(1.2cm)
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      [
        #text(size: 20pt, weight: "bold", fill: white)[
          le cnam
        ]
        #v(-6pt)
        #text(size: 11pt, fill: white.darken(20%))[
          #institution
        ]
      ],
      [
        #block(
          stroke: 1pt + cnam-red,
          fill: cnam-red,
          inset: (x: 12pt, y: 6pt),
          radius: 4pt
        )[
          #text(size: 11pt, weight: "bold", fill: white)[
            #module
          ]
        ]
      ]
    )

    #v(1.8cm)
    #block(
      fill: rgb("#FFFFFF").transparentize(92%),
      stroke: (left: 8pt + cnam-red),
      inset: (x: 20pt, y: 18pt),
      radius: (right: 6pt),
      width: 100%
    )[
      #text(size: 14pt, weight: "bold", fill: cnam-red.lighten(70%))[
        #course-title (FAB113) — Chapitre #chapter-num
      ]
      #v(0.3em)
      #text(size: 24pt, weight: "bold", fill: white)[
        #chapter-title
      ]
      #if subtitle != "" [
        #v(0.4em)
        #text(size: 14pt, fill: white.darken(10%))[
          #subtitle
        ]
      ]
    ]

    #v(1.8cm)
    #grid(
      columns: (1fr, 1fr),
      [
        #text(size: 11.5pt, fill: white)[
          *Enseignant :* #author \
          _Équipe Pédagogique Nationale Mécanique_
        ]
      ],
      [
        #align(right)[
          #text(size: 11pt, fill: white.darken(15%))[
            Outil CAO : *FreeCAD* \
            Dépôt : `hoareauc/MECAcourses`
          ]
        ]
      ]
    )
  ]
}

// Slide standard
#let slide(title: "Titre de la diapositive", content) = {
  slide-counter.step()
  pagebreak()
  v(0.2cm)
  text(size: 18pt, weight: "bold", fill: cnam-blue)[
    #title
  ]
  v(0.2em)
  line(length: 100%, stroke: 1.5pt + cnam-red)
  v(0.6em)
  content
}

// Bloc carte
#let card(title: none, body, border-color: cnam-blue, fill-color: white) = {
  block(
    fill: fill-color,
    stroke: (left: 4pt + border-color, rest: 0.5pt + cnam-gray.lighten(60%)),
    radius: (right: 4pt),
    inset: (x: 12pt, y: 10pt),
    width: 100%,
    [
      #if title != none [
        #text(weight: "bold", fill: border-color, size: 12pt)[#title]
        #v(0.3em)
      ]
      #set text(size: 11pt)
      #body
    ]
  )
}
