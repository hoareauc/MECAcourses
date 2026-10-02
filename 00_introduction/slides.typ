// slides.typ - Chapitre 00
#import "cnam-slides.typ": *

#show: chapter-presentation.with(
  chapter-num: "00",
  chapter-title: "Introduction & Organisation",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  session: "Cours du soir HTT — FAB113 (60h)"
)

#chapter-title-slide(
  chapter-num: "00",
  chapter-title: "Introduction & Organisation",
  subtitle: "Méthodologie de conception, compétences et cadre pédagogique"
)

#slide(title: "Modalités d'Enseignement & Organisation")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 16pt,
    [
      #card(title: "Rythme & Séances Distancielles", border-color: cnam-red)[
        - *1 soirée par semaine* en classe virtuelle (visio synchrone).
        - Format dynamique combinant apports théoriques et mise en application (*Cours + TD*).
        - *Enregistrements vidéo* disponibles en ligne après chaque séance.
      ]
    ],
    [
      #card(title: "Travail Personnel & Préparation", border-color: cnam-blue)[
        - *Préparation obligatoire des TD à la maison* en amont de la séance.
        - Séances synchrones dédiées au déblocage, aux échanges et à l'approfondissement méthodologique.
        - Progression continue jusqu'au projet fil rouge.
      ]
    ]
  )
]

#slide(title: "Pourquoi une telle Méthodologie ?")[
  #card(title: "Le constat : Un plan est rempli de spécifications !", border-color: cnam-red)[
    Cotes dimensionnelles, tolérances ISO-GPS, états de surface... *On peut vite s'y perdre !* \
    Comment éviter de poser des cotes « par habitude » ou de manière arbitraire ?
  ]
  #v(0.4em)
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 10pt,
    [
      #card(title: "1. Répondre au besoin", border-color: cnam-blue)[
        Comment s'assurer que chaque spécification répond rigoureusement à une fonction exigée par le client ?
      ]
    ],
    [
      #card(title: "2. Capitaliser en CAO", border-color: cnam-blue)[
        Comment relier les outils fonctionnels (*TAFT, bloc-diagramme*) à l'arbre de modélisation FreeCAD ?
      ]
    ],
    [
      #card(title: "3. Procédé de fabrication", border-color: cnam-blue)[
        Comment intégrer le mode d'obtention (bruts, moulage, usinage) dès la conception préliminaire ?
      ]
    ]
  )
]

#slide(title: "Compétences Clés du Module (C1 à C5)")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 12pt,
    [
      #card(title: "C1 — Analyser le besoin (AFB)", border-color: cnam-red)[
        Caractériser les fonctions de service, rédiger le CdCF et structurer les flux du produit.
      ]
      #v(0.3em)
      #card(title: "C2 — Architecture technique (AFT)", border-color: cnam-blue)[
        Établir le bloc-diagramme fonctionnel, analyser les contacts et renseigner le TAFT.
      ]
      #v(0.3em)
      #card(title: "C3 — Tolérancement ISO-GPS", border-color: cnam-red)[
        Justifier les chaînes de cotes et appliquer le tolérancement géométrique et dimensionnel normalisé.
      ]
    ],
    [
      #card(title: "C4 — Modélisation CAO & Procédés", border-color: cnam-blue)[
        Concevoir des pièces et assemblages sous FreeCAD en intégrant les contraintes d'obtention des bruts et d'usinage.
      ]
      #v(0.3em)
      #card(title: "C5 — Communication & Capitalisation", border-color: cnam-red)[
        Produire des plans de définition exploitables et structurer un dossier technique complet.
      ]
    ]
  )
]

#slide(title: "Volume Horaire & Environnement Numérique")[
  #grid(
    columns: (1.2fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Découpage du module (60h)")[
        #table(
          columns: (1.1fr, 2fr, 0.8fr),
          fill: (x, y) => if y == 0 { cnam-red.lighten(85%) } else if calc.even(y) { cnam-light-gray } else { white },
          stroke: 0.5pt + cnam-gray.lighten(50%),
          table.header([*Activité*], [*Description*], [*Volume*]),
          [Visio synchrone], [Cours méthodologiques & TD interactifs], [24 h],
          [Ateliers FreeCAD], [Modélisation dirigée & cotation GPS], [20 h],
          [Projet fil rouge], [Conception d'un ensemble mécanique], [16 h]
        )
      ]
    ],
    [
      #card(title: "Outil CAO : FreeCAD 0.21+", border-color: cnam-blue)[
        - Logiciel libre et open-source.
        - Approche par esquisses contraintes et corps paramétriques (*PartDesign*).
        - Rapprochement direct surfaces fonctionnelles $<->$ fonctions techniques.
      ]
    ]
  )
]
