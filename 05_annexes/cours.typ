// cours.typ - Chapitre 05
#import "cnam-template.typ": *

#show: cnam-chapter-doc.with(
  chapter-num: "05",
  chapter-title: "Annexes & Documents d'Approfondissement",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  filiere: "Cours du soir HTT — FAB113 (60h)"
)

= Annexes & Documents d'Approfondissement

== Annexe A : Catalogue des Liaisons Mécaniques Élémentaires

#lorem(20)

// Exemple de tableau de formulaire
#table(
  columns: (1.5fr, 1.2fr, 2fr),
  fill: (x, y) => if y == 0 { cnam-red.lighten(85%) } else if calc.even(y) { cnam-light-gray } else { white },
  stroke: 0.5pt + cnam-gray.lighten(50%),
  table.header([*Liaison normalisée*], [*DDL*], [*Torseur Cinématique $[cal(V)]$*]),
  [Pivot d'axe $(O, bold(x))$], [1 ($R_x$)], [$vec(omega_x, 0, 0)_(O, cal(R)), vec(0, 0, 0)_(O, cal(R))$],
  [Glissière d'axe $(O, bold(x))$], [1 ($T_x$)], [$vec(0, 0, 0)_(O, cal(R)), vec(v_x, 0, 0)_(O, cal(R))$],
  [Appui Plan de normale $bold(z)$], [3 ($R_z, T_x, T_y$)], [$vec(0, 0, omega_z)_(O, cal(R)), vec(v_x, v_y, 0)_(O, cal(R))$]
)

== Annexe B : Ajustements ISO Usuels

#lorem(20)

#table(
  columns: (1fr, 1.2fr, 2.5fr),
  fill: (x, y) => if y == 0 { cnam-blue.lighten(80%) } else if calc.even(y) { cnam-light-gray } else { white },
  stroke: 0.5pt + cnam-gray.lighten(50%),
  table.header([*Ajustement*], [*Désignation*], [*Application type*]),
  [H7 / g6], [Jeu faible], [Guidage précis pour outillages],
  [H7 / h6], [Glissant juste], [Montage manuel sans jeu],
  [H7 / p6], [Serrage fort], [Montage permanent à la presse]
)

== Annexe C : Mémento FreeCAD pour les Séances en Visio

#lorem(25)

== Annexe D : Grille d'Évaluation du Projet

#lorem(25)


