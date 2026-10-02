// slides.typ - Chapitre 01
#import "cnam-slides.typ": *

#show: chapter-presentation.with(
  chapter-num: "01",
  chapter-title: "Analyse Fonctionnelle du Besoin (AFB)",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  session: "Cours du soir HTT — FAB113 (60h)"
)

#chapter-title-slide(
  chapter-num: "01",
  chapter-title: "Analyse Fonctionnelle du Besoin",
  subtitle: "Exprimer le besoin client et formaliser le CdCF"
)

#slide(title: "1.1 Frontière d'Étude & Bête à Cornes")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Frontière d'Étude")[
        #lorem(25)
      ]
    ],
    [
      #card(title: "Bête à Cornes", border-color: cnam-red)[
        #rect(width: 100%, height: 60pt, stroke: (paint: cnam-red, dash: "dashed"), fill: cnam-light-gray)[
          #align(center + horizon)[#text(size: 10pt, fill: cnam-gray)[Exemple d'emplacement Image : Bête à cornes]]
        ]
      ]
    ]
  )
]

#slide(title: "1.2 Phases de Vie, Graphe des Interacteurs & CdCF")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Phases de Vie & Graphe des Interacteurs")[
        #lorem(25)
      ]
    ],
    [
      #card(title: "Cahier des Charges & FAST de Créativité", border-color: cnam-blue)[
        #lorem(25)
      ]
    ]
  )
]


