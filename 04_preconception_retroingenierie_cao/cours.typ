// cours.typ - Chapitre 04
#import "cnam-template.typ": *

#show: cnam-chapter-doc.with(
  chapter-num: "04",
  chapter-title: "Démarche de Pré-conception & Rétro-ingénierie sur CAO",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  filiere: "Cours du soir HTT — FAB113 (60h)"
)

= Démarche de Pré-conception et Rétro-ingénierie sur CAO

#lorem(30)

== Définition des Surfaces Fonctionnelles

#lorem(40)

#definition(title: "Surfaces Fonctionnelles vs Brutes")[
  #lorem(25)
]

== Structuration de l'Arbre de Conception (FreeCAD)

#lorem(35)

#freecad(title: "Structuration PartDesign & Gestion du TNP")[
  #lorem(30)
]

// Exemple d'emplacement capture d'écran FreeCAD
#align(center)[
  #rect(
    width: 80%,
    height: 60pt,
    stroke: (paint: rgb("#0284C7"), dash: "dashed"),
    fill: cnam-light-gray,
    radius: 4pt
  )[
    #align(center + horizon)[
      #text(fill: cnam-gray, style: "italic")[
        [Emplacement Image : Capture Arbre de Conception FreeCAD & Master Sketch]
      ]
    ]
  ]
]

== Découpage d'un Brut Associé au Procédé

#lorem(30)

// Exemple de tableau procédés / caractéristiques géométriques
#table(
  columns: (1fr, 2fr, 2fr),
  fill: (x, y) => if y == 0 { cnam-red.lighten(85%) } else if calc.even(y) { cnam-light-gray } else { white },
  stroke: 0.5pt + cnam-gray.lighten(50%),
  table.header([*Procédé*], [*Caractéristiques du brut*], [*Règles de tracé CAO*]),
  [Moulage / Fonderie], [Parois d'épaisseurs constantes], [Dépouilles ($1^circle$ à $3^circle$), congés ($R >= 3$ mm)],
  [Usinage dans la masse], [Géométries prismatiques], [Dégagements d'outils, perçages normalisés],
  [Fabrication additive], [Structures allégées], [Angles de surplomb $>= 45^circle$]
)

== Démarche de Rétro-ingénierie

#lorem(40)


