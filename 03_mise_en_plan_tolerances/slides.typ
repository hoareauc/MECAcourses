// slides.typ - Chapitre 03
#import "cnam-slides.typ": *

#show: chapter-presentation.with(
  chapter-num: "03",
  chapter-title: "Mise en Plan et Tolérances",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  session: "Cours du soir HTT — FAB113 (60h)"
)

#chapter-title-slide(
  chapter-num: "03",
  chapter-title: "Mise en Plan et Tolérances",
  subtitle: "Normes ISO, Grille GPS et Chaînes de Cotes"
)

#slide(title: "3.1 Normes ISO & Grille GPS")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Normes ISO de Dessin Technique")[
        #lorem(25)
      ]
    ],
    [
      #card(title: "Grille GPS (Spécification Géométrique)", border-color: cnam-blue)[
        #lorem(25)
      ]
    ]
  )
]

#slide(title: "3.2 Chaînes de Cotes Fonctionnelles")[
  #card(title: "Méthode des Vecteurs & Équations aux Limites")[
    #rect(width: 100%, height: 50pt, stroke: (paint: cnam-blue, dash: "dashed"), fill: cnam-light-gray)[
      #align(center + horizon)[#text(size: 10pt, fill: cnam-gray)[Exemple Schéma : Boucle de chaîne de cotes]]
    ]
    #v(6pt)
    Exemple d'équation :
    $ bold(J)_"max" = sum a_i^+"max" - sum a_i^-"min" $
  ]
]


