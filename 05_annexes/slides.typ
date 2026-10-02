// slides.typ - Chapitre 05
#import "cnam-slides.typ": *

#show: chapter-presentation.with(
  chapter-num: "05",
  chapter-title: "Annexes & Approfondissements",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  session: "Cours du soir HTT — FAB113 (60h)"
)

#chapter-title-slide(
  chapter-num: "05",
  chapter-title: "Annexes & Approfondissements",
  subtitle: "Formulaires cinématiques, tolérances et fiches guides"
)

#slide(title: "Formulaires & Guides Techniques")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Formulaire des Liaisons", border-color: cnam-red)[
        - DDL & Torseurs cinématiques
        - Torseurs des actions mécaniques
        - Symboles normalisés 2D & 3D
      ]
    ],
    [
      #card(title: "Ajustements ISO & Fiches Mémo", border-color: cnam-blue)[
        - Tableaux H7/g6, H7/h6, H7/p6
        - Raccourcis et astuces FreeCAD
        - Grille d'évaluation du projet
      ]
    ]
  )
]


