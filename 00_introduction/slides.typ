// slides.typ - Chapitre 00
#import "cnam-slides.typ": *

#show: chapter-presentation.with(
  chapter-num: "00",
  chapter-title: "Introduction & Organisation",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  session: "Cours du soir HTT — FAB113 (60h)"
)

#chapter-title-slide(
  chapter-num: "00",
  chapter-title: "Introduction & Organisation",
  subtitle: "Cadre distanciel, calendrier et environnement FreeCAD"
)

#slide(title: "Modalités d'Enseignement & Visio")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 16pt,
    [
      #card(title: "Pédagogie à distance", border-color: cnam-red)[
        #lorem(25)
      ]
    ],
    [
      #card(title: "Environnement Numérique FreeCAD", border-color: cnam-blue)[
        #lorem(25)
      ]
    ]
  )
]

#slide(title: "Volume Horaire & Évaluation")[
  #card(title: "Découpage du module (60h)")[
    #table(
      columns: (1fr, 2fr, 1fr),
      fill: (x, y) => if y == 0 { cnam-red.lighten(85%) } else if calc.even(y) { cnam-light-gray } else { white },
      stroke: 0.5pt + cnam-gray.lighten(50%),
      table.header([*Activité*], [*Description*], [*Volume*]),
      [Visio synchrone], [Cours interactifs et études de cas], [24 h],
      [Ateliers FreeCAD], [Modélisation dirigée et cotation], [20 h],
      [Projet fil rouge], [Conception d'un ensemble mécanique], [16 h]
    )
  ]
]


