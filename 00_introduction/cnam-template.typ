// cnam-template.typ
// Modèle de document de chapitre Typst aux couleurs officielles du Cnam
// Inspiré du style Cnam moderne & ingénierie

#let cnam-red = rgb("#A60038")       // Rouge officiel Cnam
#let cnam-dark-red = rgb("#7B0029")  // Rouge sombre
#let cnam-blue = rgb("#1B254B")     // Bleu nuit / ardoise
#let cnam-dark = rgb("#1E293B")     // Texte sombre
#let cnam-gray = rgb("#64748B")     // Gris secondaire
#let cnam-light-gray = rgb("#F8FAFC")// Fond gris très doux
#let cnam-box-bg = rgb("#FAF5F6")   // Fond teinté rouge clair doux

// Boîtes stylisées
#let cnam-box(
  title: none,
  body,
  border-color: cnam-red,
  bg-color: cnam-box-bg,
  icon: none,
  breakable: false
) = {
  v(0.35em)
  block(
    fill: bg-color,
    stroke: (left: 3.5pt + border-color, rest: 0.5pt + border-color.lighten(80%)),
    radius: (right: 4pt),
    inset: (x: 11pt, y: 9pt),
    width: 100%,
    breakable: breakable,
    [
      #if title != none [
        #block(below: 0.45em)[
          #text(weight: "bold", fill: border-color, size: 9.5pt)[
            #if icon != none [ #icon #h(4pt) ]
            #title
          ]
        ]
      ]
      #set text(fill: cnam-dark, size: 9.5pt)
      #body
    ]
  )
  v(0.35em)
}

#let definition(title: "Définition", body) = cnam-box(
  title: title,
  body,
  border-color: cnam-red,
  bg-color: rgb("#FDF2F4"),
  icon: "📘",
  breakable: false
)

#let methode(title: "Méthode & Démarche", body) = cnam-box(
  title: title,
  body,
  border-color: cnam-blue,
  bg-color: rgb("#F0F4FA"),
  icon: "⚙️",
  breakable: false
)

#let remarque(title: "Remarque importante", body) = cnam-box(
  title: title,
  body,
  border-color: cnam-gray,
  bg-color: rgb("#F8FAFC"),
  icon: "💡",
  breakable: false
)

#let attention(title: "Attention / Piège à éviter", body) = cnam-box(
  title: title,
  body,
  border-color: rgb("#D97706"),
  bg-color: rgb("#FFFBEB"),
  icon: "⚠️",
  breakable: false
)

#let freecad(title: "Atelier FreeCAD", body) = cnam-box(
  title: title,
  body,
  border-color: rgb("#0284C7"),
  bg-color: rgb("#F0F9FF"),
  icon: "💻",
  breakable: false
)

#let norme(title: "Référence Normative ISO", body) = cnam-box(
  title: title,
  body,
  border-color: rgb("#059669"),
  bg-color: rgb("#F0FDF4"),
  icon: "📐",
  breakable: false
)

// Modèle pour document autonome de chapitre
#let cnam-chapter-doc(
  chapter-num: "01",
  chapter-title: "Titre du Chapitre",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  institution: "Conservatoire National des Arts et Métiers",
  filiere: "Cours du soir HTT — FAB113 (60h)",
  doc
) = [
  #set document(title: chapter-title, author: author)

  #set page(
    paper: "a4",
    margin: (x: 2.2cm, top: 2.4cm, bottom: 2.4cm),
    header: context {
      let page-num = counter(page).get().first()
      if page-num > 1 [
        #grid(
          columns: (1fr, auto),
          align: (left + bottom, right + bottom),
          [
            #text(size: 8pt, fill: cnam-gray)[
              #smallcaps("Cnam") — #course-title (FAB113)
            ]
          ],
          [
            #text(size: 8pt, fill: cnam-red, weight: "bold")[
              Chapitre #chapter-num : #chapter-title
            ]
          ]
        )
        #v(-4pt)
        #line(length: 100%, stroke: 0.5pt + cnam-red)
      ]
    },
    footer: context [
      #line(length: 100%, stroke: 0.4pt + cnam-gray.lighten(60%))
      #v(3pt)
      #grid(
        columns: (1fr, 1fr),
        align: (left, right),
        [
          #text(size: 8pt, fill: cnam-gray)[
            #author — #filiere
          ]
        ],
        [
          #text(size: 8pt, fill: cnam-blue, weight: "bold")[
            Page #counter(page).display("1 / 1", both: true)
          ]
        ]
      )
    ]
  )

  #set text(
    font: ("Times New Roman", "Cambria", "Calibri"),
    size: 10.5pt,
    fill: cnam-dark,
    lang: "fr"
  )
  #set par(justify: true, leading: 0.72em)

  // Style des tableaux : texte blanc dans les en-têtes (y == 0)
  #show table.cell.where(y: 0): it => [
    #set text(fill: white, weight: "bold")
    #it
  ]

  // Règle de numérotation calculée des sections
  #set heading(numbering: (..nums) => {
    let pos = nums.pos()
    let is-numeric = chapter-num.clusters().all(c => c in "0123456789")
    let ch-int = if is-numeric { int(chapter-num) } else { 0 }
    if pos.len() == 1 {
      none
    } else if pos.len() == 2 {
      if ch-int > 0 and ch-int < 5 {
        str(ch-int) + "." + str(pos.at(1))
      } else {
        str(pos.at(1))
      }
    } else {
      if ch-int > 0 and ch-int < 5 {
        str(ch-int) + "." + pos.slice(1).map(str).join(".")
      } else {
        pos.slice(1).map(str).join(".")
      }
    }
  })

  #show heading: it => {
    set text(font: ("Arial", "Segoe UI"), fill: cnam-blue)
    if it.level == 1 {
      v(0.3em)
      block(
        fill: rgb("#FAF5F6"),
        stroke: (left: 4.5pt + cnam-red, rest: 0.5pt + cnam-red.lighten(85%)),
        radius: (right: 5pt),
        inset: (x: 13pt, y: 10pt),
        width: 100%
      )[
        #text(size: 8.5pt, weight: "bold", fill: cnam-red, tracking: 1.5pt)[CHAPITRE #chapter-num]
        #v(0.2em)
        #text(size: 15pt, weight: "bold", fill: cnam-blue)[
          #it.body
        ]
      ]
      v(0.5em)
    } else if it.level == 2 {
      v(0.9em)
      text(size: 11.5pt, weight: "bold", fill: cnam-red)[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          h(0.4em)
        }
        #it.body
      ]
      v(0.25em)
    } else if it.level == 3 {
      v(0.7em)
      text(size: 10.5pt, weight: "bold", fill: cnam-blue)[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          h(0.3em)
        }
        #it.body
      ]
      v(0.2em)
    } else {
      v(0.5em)
      text(size: 10pt, weight: "bold", fill: cnam-dark)[
        #it.body
      ]
      v(0.2em)
    }
  }

  // En-tête de première page
  #grid(
    columns: (1fr, auto),
    align: (left + horizon, right + horizon),
    [
      #text(size: 13pt, weight: "bold", fill: cnam-red)[le cnam] \
      #v(-2pt)
      #text(size: 8pt, fill: cnam-gray)[#institution • EPN 04 Ingénierie Mécanique]
    ],
    [
      #align(right)[
        #text(size: 9pt, weight: "bold", fill: cnam-blue)[#author] \
        #v(-2pt)
        #text(size: 7.5pt, fill: cnam-gray)[#filiere]
      ]
    ]
  )
  #v(0.1cm)
  #line(length: 100%, stroke: 1.2pt + cnam-red)
  #v(0.25cm)

  #doc
]
