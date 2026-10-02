// slides.typ - Chapitre 02
#import "cnam-slides.typ": *

#show: chapter-presentation.with(
  chapter-num: "02",
  chapter-title: "Analyse Fonctionnelle Technique (AFT)",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  session: "Cours du soir HTT — FAB113 (60h)"
)

#chapter-title-slide(
  chapter-num: "02",
  chapter-title: "Analyse Fonctionnelle Technique",
  subtitle: "De la fonction de service à l'architecture mécanique"
)

#slide(title: "2.1 FAST de Description & Bloc Diagramme")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "FAST de Description")[
        #lorem(25)
      ]
    ],
    [
      #card(title: "Bloc Diagramme Fonctionnel", border-color: cnam-red)[
        #rect(width: 100%, height: 60pt, stroke: (paint: cnam-red, dash: "dashed"), fill: cnam-light-gray)[
          #align(center + horizon)[#text(size: 10pt, fill: cnam-gray)[Exemple Image : Actigramme / BDF]]
        ]
      ]
    ]
  )
]

#slide(title: "2.2 Graphe des Contacts & Tableau TAFT")[
  #card(title: "Tableau d'Analyse Fonctionnelle Technique (Exemple)")[
    #table(
      columns: (1fr, 2fr, 2fr),
      fill: (x, y) => if y == 0 { cnam-red.lighten(85%) } else if calc.even(y) { cnam-light-gray } else { white },
      stroke: 0.5pt + cnam-gray.lighten(50%),
      table.header([*Fonction Technique*], [*Solution Constructive*], [*Surfaces Fonctionnelles*]),
      [FT1 : Exemple de fonction], [Composant standard], [Portée cylindrique ou appui plan],
      [FT2 : Exemple de fonction], [Composant standard], [Portée cylindrique ou appui plan]
    )
  ]
]


