// cnam-template.typ
// Modèle de document de chapitre Typst aux couleurs officielles du Cnam
// Inspiré du style Cnam / Mathieu Aucejo

#let cnam-red = rgb("#A60038")       // Rouge officiel Cnam
#let cnam-dark-red = rgb("#7B0029")  // Rouge sombre
#let cnam-blue = rgb("#1B254B")     // Bleu nuit / ardoise
#let cnam-dark = rgb("#1E293B")     // Texte sombre
#let cnam-gray = rgb("#64748B")     // Gris secondaire
#let cnam-light-gray = rgb("#F1F5F9")// Fond gris doux
#let cnam-box-bg = rgb("#FDF8F9")   // Fond teinté rouge clair

// Boîtes stylisées
#let cnam-box(
  title: none,
  body,
  border-color: cnam-red,
  bg-color: cnam-box-bg,
  icon: none
) = {
  v(0.6em)
  block(
    fill: bg-color,
    stroke: (left: 4pt + border-color, rest: 0.5pt + border-color.lighten(70%)),
    radius: (right: 4pt),
    inset: (x: 12pt, y: 10pt),
    width: 100%,
    breakable: true,
    [
      #if title != none [
        #block(below: 0.6em)[
          #text(weight: "bold", fill: border-color)[
            #if icon != none [ #icon #h(4pt) ]
            #title
          ]
        ]
      ]
      #set text(fill: cnam-dark, size: 0.95em)
      #body
    ]
  )
  v(0.6em)
}

#let definition(title: "Définition", body) = cnam-box(
  title: title,
  body,
  border-color: cnam-red,
  bg-color: rgb("#FEF2F4"),
  icon: "📘"
)

#let methode(title: "Méthode & Démarche", body) = cnam-box(
  title: title,
  body,
  border-color: cnam-blue,
  bg-color: rgb("#F0F4FA"),
  icon: "⚙️"
)

#let remarque(title: "Remarque importante", body) = cnam-box(
  title: title,
  body,
  border-color: cnam-gray,
  bg-color: cnam-light-gray,
  icon: "💡"
)

#let attention(title: "Attention / Piège à éviter", body) = cnam-box(
  title: title,
  body,
  border-color: rgb("#D97706"),
  bg-color: rgb("#FFFBEB"),
  icon: "⚠️"
)

#let freecad(title: "Atelier FreeCAD", body) = cnam-box(
  title: title,
  body,
  border-color: rgb("#0284C7"),
  bg-color: rgb("#F0F9FF"),
  icon: "💻"
)

#let norme(title: "Référence Normative ISO", body) = cnam-box(
  title: title,
  body,
  border-color: rgb("#059669"),
  bg-color: rgb("#ECFDF5"),
  icon: "📐"
)

// Modèle pour document autonome de chapitre
#let cnam-chapter-doc(
  chapter-num: "01",
  chapter-title: "Titre du Chapitre",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  institution: "Conservatoire National des Arts et Métiers (Cnam)",
  filiere: "Cours du soir HTT — FAB113 (60h)",
  doc
) = [
  #set document(title: chapter-title, author: author)

  #set page(
    paper: "a4",
    margin: (x: 2.5cm, top: 2.6cm, bottom: 2.6cm),
    header: context {
      let page-num = counter(page).get().first()
      if page-num > 1 [
        #grid(
          columns: (1fr, 1fr),
          align: (left, right),
          [
            #text(size: 8.5pt, fill: cnam-gray, font: ("Arial", "Segoe UI"))[
              #smallcaps(institution) — #course-title (FAB113)
            ]
          ],
          [
            #text(size: 8.5pt, fill: cnam-red, font: ("Arial", "Segoe UI"), weight: "bold")[
              Chapitre #chapter-num : #chapter-title
            ]
          ]
        )
        #v(-4pt)
        #line(length: 100%, stroke: 0.5pt + cnam-red)
      ]
    },
    footer: context [
      #line(length: 100%, stroke: 0.4pt + cnam-gray.lighten(50%))
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
          #text(size: 8.5pt, fill: cnam-blue, weight: "bold")[
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
      v(0.8em)
      block(width: 100%)[
        #rect(
          fill: cnam-box-bg,
          stroke: (left: 6pt + cnam-red, bottom: 1pt + cnam-red.lighten(70%)),
          inset: (x: 14pt, y: 12pt),
          width: 100%
        )[
          #text(size: 10pt, weight: "bold", fill: cnam-red)[
            CHAPITRE #chapter-num
          ]
          #v(0.2em)
          #text(size: 18pt, weight: "bold", fill: cnam-blue)[
            #it.body
          ]
        ]
      ]
      v(0.8em)
    } else if it.level == 2 {
      v(1.1em)
      text(size: 12.5pt, weight: "bold", fill: cnam-red)[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          h(0.4em)
        }
        #it.body
      ]
      v(0.3em)
    } else if it.level == 3 {
      v(0.8em)
      text(size: 11pt, weight: "bold", fill: cnam-blue)[
        #if it.numbering != none {
          counter(heading).display(it.numbering)
          h(0.3em)
        }
        #it.body
      ]
      v(0.2em)
    } else {
      v(0.6em)
      text(size: 10.5pt, weight: "bold", fill: cnam-dark)[
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
      #text(size: 13pt, weight: "bold", fill: cnam-red, font: ("Arial", "Segoe UI"))[
        le cnam
      ]
      #v(-4pt)
      #text(size: 8.5pt, fill: cnam-gray)[
        #institution • #filiere
      ]
    ],
    [
      #block(
        stroke: 0.8pt + cnam-blue,
        inset: (x: 8pt, y: 4pt),
        radius: 3pt,
        fill: cnam-light-gray
      )[
        #text(size: 8.5pt, weight: "bold", fill: cnam-blue)[
          #author
        ]
      ]
    ]
  )
  #v(0.2cm)
  #line(length: 100%, stroke: 1.5pt + cnam-red)
  #v(0.4cm)

  #doc
]
