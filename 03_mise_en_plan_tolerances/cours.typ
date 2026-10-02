// cours.typ - Chapitre 03
#import "cnam-template.typ": *

#show: cnam-chapter-doc.with(
  chapter-num: "03",
  chapter-title: "Mise en Plan et Tolérances (ISO GPS & Chaînes de Cotes)",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  filiere: "Cours du soir HTT — FAB113 (60h)"
)

= Mise en Plan et Tolérances (ISO, Grille GPS & Chaînes de Cotes)

#lorem(30)

== Normes ISO (Dessin Technique & Projection)

#lorem(35)

#norme(title: "Normes fondamentales ISO")[
  #lorem(20)
]

== Grille GPS (Spécification Géométrique des Produits)

#lorem(40)

// Exemple de tableau de tolérances GPS
#table(
  columns: (1fr, 1fr, 0.8fr, 2fr),
  fill: (x, y) => if y == 0 { cnam-blue.lighten(80%) } else if calc.even(y) { cnam-light-gray } else { white },
  stroke: 0.5pt + cnam-gray.lighten(50%),
  table.header([*Famille*], [*Caractéristique*], [*Symbole*], [*Zone de tolérance*]),
  [Forme], [Planéité], [⏢], [Entre deux plans parallèles distants de $t$],
  [Orientation], [Perpendicularité], [⟂], [Perpendiculaire à la référence],
  [Position], [Localisation], [⌖], [Position théorique exacte (TED)]
)

== Chaîne de Cotes

#lorem(30)

// Exemple d'emplacement schéma chaîne de cotes
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
        [Emplacement Image : Boucle de Chaîne de Cotes sur dessin d'ensemble]
      ]
    ]
  ]
]

=== Équations aux Valeurs Limites

Exemple d'équation de cote condition :

$ bold(J)_"max" = sum a_i^+"max" - sum a_i^-"min" $
$ bold(J)_"min" = sum a_i^+"min" - sum a_i^-"max" $

#lorem(25)


