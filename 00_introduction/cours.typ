// cours.typ - Chapitre 00
#import "cnam-template.typ": *

#show: cnam-chapter-doc.with(
  chapter-num: "00",
  chapter-title: "Introduction & Organisation du Module",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  filiere: "Cours du soir HTT — FAB113 (60h)",
)

= Introduction & Organisation du Module

== Cadre Pédagogique et Modalités d'Enseignement (Visio & Distanciel)

Ce cours propose une approche méthodologique complète de la conception mécanique, guidant la démarche depuis l'expression initiale du besoin jusqu'au tolérancement géométrique et dimensionnel, tout en intégrant la prise en compte des procédés de fabrication.

#methode(title: "Organisation du module en distanciel")[
  - *Format hebdomadaire :* Le module est organisé à raison d'une soirée par semaine en visio synchrone, alternant apports méthodologiques et exercices d'application (format Cours + TD).
  - *Enregistrements en ligne :* Chaque séance fait l'objet d'un enregistrement complet mis à disposition sur l'espace numérique du cours.
  - *Préparation en amont :* Les TD doivent impérativement être préparés à la maison avant la séance afin de consacrer le temps synchrone aux échanges, aux difficultés et à la modélisation.
]

== Justification de la Démarche : Pourquoi une telle Méthodologie ?

Un plan de définition industriel est souvent dense, complexe et littéralement *rempli de spécifications* : cotes dimensionnelles, tolérances géométriques ISO-GPS, rugosités, états de surface et annotations de procédé. Face à cette masse d'informations, il est facile de s'y perdre et de poser des cotes « par habitude », sans réelle justification.

La démarche enseignée dans ce cours permet de répondre avec rigueur à trois questions fondamentales :

- *Légitimité de la spécification :* Comment s'assurer que chaque exigence répond strictement à un besoin fonctionnel réel, sans sur-contraindre inutilement le produit ?
- *Capitalisation dans la CAO :* Comment relier et capitaliser les outils fonctionnels amont (Tableau d'Analyse Fonctionnelle et Technique *TAFT*, *bloc-diagramme fonctionnel*, graphe de contacts) directement dans l'arbre de modélisation FreeCAD ?
- *Prise en compte des procédés de fabrication :* Comment concevoir une forme sans dissocier la fonction de son mode d'obtention (brut de fonderie, forge, fabrication additive, usinage) ?

Toutes ces questions seront traitées de manière appliquée et progressive tout au long du semestre.

#remarque(title: "Le fil conducteur du cours")[
  Une spécification sur un plan n'est jamais le fruit du hasard. Elle est l'aboutissement d'une chaîne logique continue :
  #align(center)[
    *Besoin exprimé* $arrow.r$ *Fonction technique* $arrow.r$ *Surface fonctionnelle (CAO)* $arrow.r$ *Spécification ISO-GPS & Procédé*
  ]
]

#pagebreak()

== Compétences Visées du Module

À l'issue de cet enseignement, l'auditeur aura acquis et consolidé les cinq compétences clés du référentiel :

#table(
  columns: (2.1fr, 3.4fr),
  fill: (x, y) => if y == 0 { cnam-blue } else if calc.even(y) { rgb("#F8FAFC") } else { white },
  stroke: 0.4pt + rgb("#CBD5E1"),
  inset: (x: 10pt, y: 7pt),
  table.header(
    [*Compétence visée*],
    [*Description et acquis d'apprentissage*]
  ),
  [#text(weight: "bold", fill: cnam-red)[C1 — Analyse du besoin]],
  [Identifier les parties prenantes, caractériser et hiérarchiser les fonctions de service, rédiger un Cahier des Charges Fonctionnel (CdCF).],
  [#text(weight: "bold", fill: cnam-blue)[C2 — Architecture technique]],
  [Traduire les exigences en solutions techniques via les bloc-diagrammes fonctionnels, analyser les surfaces de contact et renseigner le TAFT.],
  [#text(weight: "bold", fill: cnam-red)[C3 — Tolérancement ISO-GPS]],
  [Établir des chaînes de cotes unidirectionnelles, choisir des ajustements normalisés et définir des spécifications géométriques conformes aux normes ISO-GPS.],
  [#text(weight: "bold", fill: cnam-blue)[C4 — CAO & Procédés]],
  [Modéliser des pièces et assemblages sous FreeCAD en intégrant rigoureusement les contraintes d'obtention de bruts et d'usinage.],
  [#text(weight: "bold", fill: cnam-red)[C5 — Communication technique]],
  [Réaliser des mises en plan normalisées prêtes pour la fabrication et documenter les choix de conception dans un dossier de pré-conception.]
)

== Volume Horaire & Découpage

Le module représente un volume global de *60 heures d'enseignement* réparties comme suit :

#table(
  columns: (1.2fr, 2.3fr, 0.8fr),
  fill: (x, y) => if y == 0 { cnam-blue } else if calc.even(y) { rgb("#F8FAFC") } else { white },
  stroke: 0.4pt + rgb("#CBD5E1"),
  inset: (x: 10pt, y: 7pt),
  table.header(
    [*Activité*],
    [*Description pédagogique*],
    [*Volume*]
  ),
  [Classes virtuelles (Visio)], [Séances synchrones d'apports méthodologiques et études de cas], [24 h],
  [Ateliers dirigés FreeCAD], [Pratique guidée de modélisation 3D, assemblages et cotation], [20 h],
  [Projet fil rouge], [Travail personnel tutoré : conception complète d'un sous-ensemble], [16 h],
  [#text(weight: "bold")[Total]], [#text(weight: "bold")[Volume horaire global UE FAB113]], [#text(weight: "bold")[60 h]]
)

== Environnement CAO : FreeCAD

#freecad(title: "Atelier Numérique : FreeCAD 0.21+")[
  *FreeCAD* est l'outil de CAO retenu pour l'ensemble du module. Logiciel libre, multiplateforme et paramétrique, il permet de mettre en pratique une conception méthodique :
  - Découpage rigoureux en corps (*Body*) et ateliers dédiés (*PartDesign*, *TechDraw*).
  - Traçabilité directe entre les *surfaces fonctionnelles* identifiées dans le TAFT et les entités géométriques du modèle 3D.
  - Préparation directe à la fabrication par l'export des plans normalisés et fichiers neutres (STEP, DXF, STL).
]
