// cours.typ - Chapitre 00
#import "cnam-template.typ": *

#show: cnam-chapter-doc.with(
  chapter-num: "00",
  chapter-title: "Introduction & Organisation du Module (60h Cours du soir HTT (FAB113))",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  filiere: "Cours du soir HTT — FAB113 (60h)",
)

= Introduction & Organisation du Module

== Cadre Pédagogique et Modalités d'Enseignement (Visio & Distanciel)

Ce cours propose une approche méthodologique complète de la conception mécanique, guidant la démarche depuis l'expression initiale du besoin jusqu'au tolérancement, tout en intégrant la prise en compte des procédés de fabrication.

#methode(title: "Organisation du module")[
  - *Format hebdomadaire :* Le module est organisé à raison d'un soir par semaine en visio, articulé autour de sessions combinant cours et travaux dirigés (cours + TD).
  - *Enregistrements en ligne :* Chaque séance est enregistrée, et la vidéo est mise à disposition en ligne.
  - *Travail personnel :* Les TD sont à préparer à la maison en amont de la séance afin de favoriser les échanges et la mise en pratique.
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
  [Projet fil rouge], [Travail personnel et conception d'un sous-ensemble], [16 h],
)

== Environnement CAO : FreeCAD

#freecad(title: "Outil FreeCAD")[
  #lorem(30)
]
