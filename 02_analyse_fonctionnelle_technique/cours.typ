// cours.typ - Chapitre 02
#import "cnam-template.typ": *

#show: cnam-chapter-doc.with(
  chapter-num: "02",
  chapter-title: "Analyse Fonctionnelle Technique (AFT)",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  filiere: "Cours du soir HTT — FAB113 (60h)"
)

= Analyse Fonctionnelle Technique (AFT)

#lorem(30)

== FAST de Description

#lorem(40)

#methode(title: "Logique FAST (Pourquoi / Comment / Quand)")[
  #lorem(25)
]

== Bloc Diagramme

#lorem(30)

// Exemple d'emplacement pour figure / diagramme flux
#align(center)[
  #rect(
    width: 80%,
    height: 60pt,
    stroke: (paint: cnam-blue, dash: "dashed"),
    fill: cnam-light-gray,
    radius: 4pt
  )[
    #align(center + horizon)[
      #text(fill: cnam-gray, style: "italic")[
        [Emplacement Image : Bloc Diagramme Fonctionnel / Actigramme A-0]
      ]
    ]
  ]
]

== Graphe des Contacts Élémentaires

#lorem(35)

== Tableau d'Analyse Fonctionnelle Technique (TAFT)

#lorem(25)

// Exemple de tableau TAFT
#table(
  columns: (auto, 1.5fr, 2fr, 2fr),
  fill: (x, y) => if y == 0 { cnam-red.lighten(85%) } else if calc.even(y) { cnam-light-gray } else { white },
  stroke: 0.5pt + cnam-gray.lighten(50%),
  table.header([*Réf.*], [*Fonction Technique*], [*Solution Constructive*], [*Surfaces / Risques*]),
  [FT1], [Description fonction technique], [Composant ou référence standard], [Surface fonctionnelle associée],
  [FT2], [Description fonction technique], [Composant ou référence standard], [Surface fonctionnelle associée]
)


