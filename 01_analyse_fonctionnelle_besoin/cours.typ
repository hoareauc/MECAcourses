// cours.typ - Chapitre 01
#import "cnam-template.typ": *

#show: cnam-chapter-doc.with(
  chapter-num: "01",
  chapter-title: "Analyse Fonctionnelle du Besoin (AFB)",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  filiere: "Cours du soir HTT — FAB113 (60h)"
)

= Analyse Fonctionnelle du Besoin (AFB)

#lorem(30)

== Frontière d'Étude

#lorem(40)

#definition(title: "Frontière d'étude")[
  #lorem(20)
]

== Bête à Cornes

#lorem(30)

// Exemple d'insertion d'image ou schéma
#align(center)[
  #rect(
    width: 80%,
    height: 60pt,
    stroke: (paint: cnam-red, dash: "dashed"),
    fill: cnam-light-gray,
    radius: 4pt
  )[
    #align(center + horizon)[
      #text(fill: cnam-gray, style: "italic")[
        [Emplacement Image : Schéma Bête à Cornes (ex: #raw("image(\"chemin/image.png\")"))]
      ]
    ]
  ]
]

== Phases de Vie & Cycle de Vie

#lorem(35)

== Graphe des Interacteurs

#lorem(30)

#remarque(title: "Fonctions Principales (FP) et Contraintes (FC)")[
  #lorem(25)
]

== Cahier des Charges et Hiérarchisation des Fonctions

#lorem(30)

// Exemple de tableau de Cahier des Charges Fonctionnel (CdCF)
#table(
  columns: (auto, 2fr, 2fr, 1fr, 1fr),
  fill: (x, y) => if y == 0 { cnam-red.lighten(85%) } else if calc.even(y) { cnam-light-gray } else { white },
  stroke: 0.5pt + cnam-gray.lighten(50%),
  table.header([*Réf.*], [*Fonction de service*], [*Critère d'appréciation*], [*Niveau*], [*Flexibilité*]),
  [FP1], [Énoncé de la fonction 1], [Critère mesurable], [Valeur nominale], [F0],
  [FC1], [Énoncé de la fonction contrainte], [Critère mesurable], [Valeur nominale], [F1]
)

== FAST de Créativité

#lorem(40)


