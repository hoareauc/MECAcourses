// cours.typ - Chapitre 00
#import "cnam-template.typ": *

#show: cnam-chapter-doc.with(
  chapter-num: "00",
  chapter-title: "Introduction & Organisation du Module (60h Cours du soir HTT (FAB113))",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  filiere: "Cours du soir HTT — FAB113 (60h)"
)

= Introduction & Organisation du Module

== Cadre Pédagogique et Modalités d'Enseignement (Visio & Distanciel)

#lorem(40)

#methode(title: "Organisation du module")[
  #lorem(25)
]

== Volume Horaire & Découpage

// Exemple de tableau d'organisation
#table(
  columns: (1.2fr, 2fr, 1fr),
  fill: (x, y) => if y == 0 { cnam-red.lighten(85%) } else if calc.even(y) { cnam-light-gray } else { white },
  stroke: 0.5pt + cnam-gray.lighten(50%),
  table.header([*Activité*], [*Description*], [*Volume*]),
  [Classes virtuelles (Visio)], [Séances synchrones et apports méthodologiques], [24 h],
  [Ateliers dirigés FreeCAD], [Pratique guidée de modélisation et tolérancement], [20 h],
  [Projet fil rouge], [Travail personnel et conception d'un sous-ensemble], [16 h]
)

== Environnement CAO : FreeCAD

#freecad(title: "Outil FreeCAD")[
  #lorem(30)
]


