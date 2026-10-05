// slides.typ - Chapitre 01 : Analyse Fonctionnelle du Besoin (AFB)
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
  subtitle: "Du besoin utilisateur au Cahier des Charges Fonctionnel (CdCF) et aux principes technologiques"
)

#slide(title: "1. La Démarche de Conception Fonctionnelle")[
  #grid(
    columns: (1.1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Les 5 Étapes Méthodologiques", border-color: cnam-red)[
        #set text(size: 10pt)
        + *Étape 1 — Périmètre :* Délimiter la frontière d'étude.
        + *Étape 2 — Besoin :* Exprimer et valider le besoin (*Bête à cornes*).
        + *Étape 3 — Profil de vie :* Inventorier les phases *U* et *H.U.*.
        + *Étape 4 — Fonctions :* Modéliser les flux (*Pieuvre*) et caractériser (*CdCF*).
        + *Étape 5 — Principes :* Balayer les principes innovants (*FAST créatif*).
      ]
    ],
    [
      #card(title: "Pourquoi cette démarche amont ?", border-color: cnam-blue)[
        #set text(size: 10pt)
        - Éviter de figer prématurément une solution technique.
        - Justifier la légitimité de chaque surface sur le plan.
        - Fédérer les acteurs : BE, Méthodes, Usine, SAV, Client.
        #v(0.4em)
        #line(length: 100%, stroke: 0.5pt + cnam-gray.lighten(60%))
        #v(0.2em)
        #align(center)[
          *Besoin* $arrow.r$ *AFB* $arrow.r$ *FAST* $arrow.r$ *Surfaces CAO FreeCAD*
        ]
      ]
    ]
  )
]

#slide(title: "2. Cas Fil Rouge : Corps de Pompe à Eau (Moteur Renault F)")[
  #grid(
    columns: (1fr, 1.1fr),
    gutter: 14pt,
    [
      #card(title: "Le Paradoxe de la Complexité", border-color: cnam-red)[
        - *Principe schématique théorique :* \
          *2 composants* suffisent à générer le pompage centrifuge : un *rotor* à aubes et un *carter*.
        - *Produit industriel abouti :* \
          *4 composants*, de nombreuses nervures, une scission en deux sous-ensembles, des oreilles de fixation et des vis.
      ]
      #v(0.3em)
      #card(title: "Question Fondamentale", border-color: cnam-blue)[
        Pourquoi une telle prolifération de formes et de composants ?
      ]
    ],
    [
      #card(title: "L'Empreinte du Profil de Vie", border-color: cnam-blue)[
        La géométrie d'une pièce industrielle est la résultante directe de contraintes multiples :
        - *Forme de la volute :* Rendement hydraulique en utilisation (U).
        - *Scission du carter :* Dépouilles de fonderie et montage du roulement (H.U.).
        - *Fixation par vis :* Démontabilité et maintenance atelier (H.U.).
        - *Nervures :* Rigidité sous contrainte et manutention usine (H.U.).
      ]
    ]
  )
]

#slide(title: "3. Étape 1 : Définition du Périmètre de l'Étude")[
  #grid(
    columns: (1fr, 1.1fr),
    gutter: 14pt,
    [
      #card(title: "Stratégie Proposée", border-color: cnam-red)[
        - *Préliminaire fondamental :* Poser sans ambiguïté la frontière du système avant toute analyse.
        - *Pas d'outil lourd :* Bon sens et rigueur d'ingénieur.
        - *Démarche en 3 temps :*
          + Inventaire des composants environnants.
          + Analyse détaillée des interactions physiques.
          + Choix argumenté des composants sous la responsabilité du concepteur.
      ]
    ],
    [
      #card(title: "Frontière d'Étude du Corps de Pompe Moteur F", border-color: cnam-blue)[
        #set text(size: 10.5pt)
        #table(
          columns: (1fr, 1.2fr),
          fill: (x, y) => if y == 0 { cnam-blue } else if x == 0 { rgb("#FEF2F4") } else { white },
          stroke: 0.4pt + cnam-gray.lighten(60%),
          table.header([*Dans le périmètre (Système)*], [*Hors périmètre (Milieu Extérieur)*]),
          [Corps de pompe (volute)], [Carter-cylindres (bloc moteur)],
          [Arbre rotor & aubes], [Poulie d'entraînement],
          [Roulement / guidage], [Courroie crantée],
          [Système d'étanchéité], [Liquide de refroidissement / Air sous capot]
        )
      ]
    ]
  )
]

#slide(title: "4. Étape 2 : Le Graphe du Besoin (« Bête à Cornes »)")[
  #grid(
    columns: (1.1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Les 3 Questions Fondamentales (NF X50-151)", border-color: cnam-blue)[
        - *À qui / À quoi rend-il service ?* \
          Au *circuit de refroidissement* et indirectement au bloc moteur et au conducteur.
        - *Sur qui / Sur quoi agit-il ?* \
          Sur le *fluide caloporteur* (liquide de refroidissement entrant / sortant).
        - *Dans quel but le système existe-t-il ?* \
          *Assurer la circulation forcée du liquide* afin d'évacuer les calories excédentaires du moteur thermique.
      ]
    ],
    [
      #card(title: "Validation du Besoin (Phrases Autocorrectives)", border-color: cnam-red)[
        - *Pourquoi ce besoin existe-t-il ?* \
          Maintenir le moteur dans sa plage thermique optimale (85°C - 105°C).
        - *Qu'est-ce qui ferait évoluer le besoin ?* \
          Régulation thermique active pilotée, allègement drastique des véhicules.
        - *Qu'est-ce qui ferait disparaître le besoin ?* \
          Moteurs 100% électriques sans liquide, moteurs céramiques adiabatiques.
      ]
      #v(0.3em)
      #card(title: "Verdict", border-color: cnam-blue)[
        *Besoin pleinement validé* pour l'ensemble du cycle de vie du moteur.
      ]
    ]
  )
]

#slide(title: "5. Étape 3 : Définition du Profil de Vie du Système")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Prise en Compte de Tous les Contextes", border-color: cnam-red)[
        - Un produit mécanique ne se résume pas à son utilisation finale.
        - *80% des formes d'une pièce* proviennent des contraintes de fabrication, d'assemblage, de transport ou de maintenance !
        - Outil de capitalisation : le *Tableau récapitulatif du profil de vie*.
      ]
      #v(0.3em)
      #card(title: "Classification Fondamentale", border-color: cnam-blue)[
        - *En Utilisation (U) :* Le système assure sa mission première.
        - *Hors Utilisation (H.U.) :* Contraintes de réalisation, logistique, entretien et recyclage.
      ]
    ],
    [
      #card(title: "Démarche pour Chaque Sous-Phase", border-color: cnam-blue)[
        Pour chaque instant de la vie du produit, consigner :
        - *L'entité concernée :* BE, méthodes, usine, logistique, garagiste, filière VHU.
        - *Les contraintes :* Matériels, effectifs, logiciels, délais, coûts.
        - *Le livrable exigé :* Maquette 3D, parcours d'outil, pièce brute, niveau d'étanchéité.
        - *Le statut :* U ou H.U.
      ]
    ]
  )
]

#slide(title: "6. Profil de Vie : Déroulement Chronologique")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "1. Concrétisation (H.U.)", border-color: cnam-blue)[
        - *Définition (BE) :* CAO, calculs, maquette 3D, prototype ABS.
        - *Industrialisation (Méthodes) :* CFAO, gammes, outillages.
        - *Fabrication (Usine) :* Fonderie alu, usinage, assemblage robotisé.
      ]
      #v(0.3em)
      #card(title: "2. Distribution & Intégration (H.U.)", border-color: cnam-blue)[
        - *Logistique :* Stockage, palettisation, transport (vibrations).
        - *Vente :* 1ère monte (constructeur) et 2e monte (rechange).
        - *Intégration moteur :* Accostage rapide, vissage au couple, joint.
      ]
    ],
    [
      #card(title: "3. Exploitation (U & H.U.) ★", border-color: cnam-red)[
        - *Utilisation active (U) :* Pompage continu, 250 W, silence.
        - *Utilisation passive (U) :* Véhicule à l'arrêt : étanchéité zéro fuite.
        - *Maintenance (H.U.) :* Diagnostic fuite, démontabilité atelier.
      ]
      #v(0.3em)
      #card(title: "4. Fin de Vie (H.U.)", border-color: cnam-gray)[
        - *Démontage moteur :* Désolidarisation rapide du bloc.
        - *Désassemblage & Recyclage :* Tri matière alu / roulement acier.
      ]
    ]
  )
]

#slide(title: "7. Profil de Vie : Concrétisation & Distribution")[
  #set text(size: 9.5pt)
  #table(
    columns: (1.2fr, 1.3fr, 1.3fr, 3fr, 2.1fr, 0.7fr),
    fill: (x, y) => if y == 0 { cnam-blue } else if calc.even(y) { rgb("#F8FAFC") } else { white },
    stroke: 0.4pt + rgb("#CBD5E1"),
    inset: (x: 5pt, y: 5pt),
    table.header([*Phase*], [*Sous-phase*], [*Entité*], [*Contraintes (Moyens / Qualité)*], [*Livrables exigés*], [*Statut*]),
    [Concrétisation], [Définition (BE)], [Bureau d'études], [4 apprentis plein temps, 1 consultant partiel, CATIA V5, 6 semaines], [Maquette 3D, cinématique, proto ABS, calculs], [H.U.],
    [Concrétisation], [Industrialisation], [Bureau méthodes], [CFAO, centres d'usinage, bancs de test outillage], [Dossier technique de fabrication, parcours d'outils], [H.U.],
    [Concrétisation], [Fabrication], [Usine / Fonderie], [Fonderie alu coquille, usinage 3 axes, robot assemblage], [Pièces usinées conformes, ensemble monté], [H.U.],
    [Distribution], [Stockage / Transport], [Logistique], [Empilage, chocs de manutention, vibrations transport], [Conditionnement protecteur zéro altération], [H.U.],
    [Distribution], [Commercialisation], [Réseau de vente], [Délais courts, coût unitaire cible, aspect de surface], [Disponibilité 1ère monte et rechange (2e monte)], [H.U.]
  )
]

#slide(title: "8. Profil de Vie : Exploitation & Maintenance")[
  #set text(size: 9.5pt)
  #table(
    columns: (1.2fr, 1.3fr, 1.3fr, 3fr, 2.1fr, 0.7fr),
    fill: (x, y) => if y == 0 { cnam-red } else if calc.even(y) { rgb("#FEF2F4") } else { white },
    stroke: 0.4pt + cnam-red.lighten(70%),
    inset: (x: 5pt, y: 5pt),
    table.header([*Phase*], [*Sous-phase*], [*Entité*], [*Contraintes (Moyens / Qualité)*], [*Livrables exigés*], [*Statut*]),
    [Intégration], [Montage moteur], [Usine montage], [Accostage rapide, serrage au couple par visseuse], [Planéité joint, étanchéité bloc moteur], [H.U.],
    [Exploitation], [Utilisation active], [Conducteur], [Pompage continu, 250 W, aucun bruit ni vibration parasite], [Débit et pression conformes, acoustique feutrée], [U],
    [Exploitation], [Utilisation passive], [Propriétaire], [Stationnement arrêté : aucune goutte polluante au sol], [Étanchéité statique absolue à chaud et à froid], [U],
    [Exploitation], [Maintenance], [Garagiste], [Diagnostic aisé de fuite, démontabilité en atelier], [Produit *afficheur de fuite*, démontable < 45 min], [H.U.],
    [Destruction], [Recyclage], [Filière VHU], [Désassemblage rapide, séparation des matériaux alu/acier], [Corps recyclable, roulement acier trié], [H.U.]
  )
]

#slide(title: "9. Profil de Vie : Genèse de l'Insatisfaction Client")[
  #grid(
    columns: (1.1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Le Problème Historique en Service", border-color: cnam-red)[
        - Sur les premiers modèles de pompes, la fuite d'étanchéité tournante survenait de manière insidieuse sans être détectée par le conducteur.
        - La perte progressive de liquide conduisait au surchauffage critique et au serrage du moteur (casse culasse / joint de culasse).
        - *Diagnostic tardif :* Le garagiste constatait les dégâts une fois la panne irrémédiable survenue.
      ]
    ],
    [
      #card(title: "L'Exigence Nouvelle : « Afficheur de Fuite »", border-color: cnam-blue)[
        - L'analyse du profil de vie (phase Maintenance) fait émerger un besoin capital : *permettre au réparateur et au propriétaire de visualiser un début de suintement*.
        - *Traduction géométrique :* Aménagement d'un canal d'évacuation gravitaire guidé sous le roulement.
        - Cette exigence issue du profil de vie génère une forme spécifique sur le brut de fonderie !
      ]
    ]
  )
]

#slide(title: "10. Étape 4 : Le Graphe des Interacteurs (Règles Formelles)")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "1. Tracé Courbe vs Tracé Droit", border-color: cnam-red)[
        - *Fonction Principale / de Service (FP) :* Tracé *courbe* reliant deux EME à travers le système.
        - *Fonction Contrainte (FC) :* Tracé *droit (rectiligne)* reliant un EME directement au système.
        - *Neutralité :* Interdiction formelle de nommer une solution technique dans la bulle système !
      ]
      #v(0.3em)
      #card(title: "2. EME Bi-États (Entrant / Sortant)", border-color: cnam-blue)[
        - Lorsqu'une matière d'œuvre change d'état au cours de l'action, on la dédouble en :
          - *$"EME"_(1a)$ :* État initial (ex : Fluide entrant basse pression).
          - *$"EME"_(1b)$ :* État transformé (ex : Fluide sortant haute pression).
      ]
    ],
    [
      #card(title: "3. EME Génériques Obligatoires", border-color: cnam-blue)[
        - *Producteur d'énergie (ou puissance) :* Apport d'énergie externe nécessaire pour respecter la conservation d'énergie.
        - *Référentiel neutre :* Indispensable pour exprimer le guidage cinématique, le positionnement et la reprise d'efforts.
      ]
      #v(0.3em)
      #card(title: "4. Systèmes Autonomes en Énergie", border-color: cnam-gray)[
        - Si la source d'énergie est embarquée (batterie, ressort), le producteur est englobé dans la frontière en pointillés.
      ]
    ]
  )
]

#slide(title: "11. Fonctions de Service du Corps de Pompe (Moteur F)")[
  #grid(
    columns: (1fr, 1.1fr),
    gutter: 14pt,
    [
      #card(title: "Fonctions Principales (Tracé Courbe)", border-color: cnam-red)[
        - *FP1 (Besoin primaire) :* \
          Transmettre la puissance mécanique du producteur d'énergie au fluide caloporteur entrant.
        - *FP2 (Besoin secondaire) :* \
          Transformer le fluide caloporteur entrant en fluide sortant (canaliser, accélérer, monter en pression).
        - *FP3 (Guidage cinématique) :* \
          Guider la poulie d'entraînement en rotation dans le référentiel fixe.
      ]
    ],
    [
      #card(title: "Fonctions Contraintes (Tracé Droit)", border-color: cnam-blue)[
        - *FC1 (Carter-cylindres) :* Assurer la fixation mécanique et l'étanchéité statique avec le bloc moteur.
        - *FC2 (Courroie) :* Supporter les efforts axiaux et radiaux transmis par la tension de courroie.
        - *FC3 (Milieu ambiant) :* Résister aux agressions corrosives et thermiques sous capot (-40°C à +125°C).
        - *FC4 (Environnement) :* Respecter l'enveloppe spatiale allouée sous capot moteur.
      ]
    ]
  )
]

#slide(title: "12. Caractérisation des Fonctions & Niveaux de Flexibilité")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Les 3 Piliers du CdCF (NF X50-151)", border-color: cnam-red)[
        - *Critère d'appréciation :* Grandeur physique observable ou mesurable (débit, pression, durée, masse).
        - *Niveau d'appréciation :* Valeur chiffrée avec unité et tolérance ($250 "W" plus.minus 10%$, $150 000 "km"$).
        - *Classe de flexibilité :* Degré de négociation admissible sur le niveau fixé.
      ]
    ],
    [
      #card(title: "Échelle des Flexibilités Cnam", border-color: cnam-blue)[
        - *$F_0$ (Nulle / Impérative) :* Aucune négociation possible (sécurité, étanchéité, norme).
        - *$F_1$ (Faible) :* Niveau peu négociable, tolérance serrée.
        - *$F_2$ (Moyenne) :* Niveau négociable contre compensation.
        - *$F_3$ (Forte) :* Valeur indicative ou souhaitée.
      ]
      #v(0.2em)
      #card(title: "Flexibilité Variable", border-color: cnam-red)[
        #set text(size: 9.5pt)
        Elle peut dépendre de l'interlocuteur (ex: garagiste pro $F_0$ vs particulier $F_2$).
      ]
    ]
  )
]

#slide(title: "13. Tableau de Caractérisation : Fonctions de Service (FP)")[
  #set text(size: 10pt)
  #table(
    columns: (0.8fr, 2.3fr, 2.3fr, 2fr, 0.6fr),
    fill: (x, y) => if y == 0 { cnam-red } else if calc.even(y) { rgb("#FEF2F4") } else { white },
    stroke: 0.4pt + cnam-red.lighten(60%),
    inset: (x: 6pt, y: 6pt),
    table.header([*Réf.*], [*Énoncé normé*], [*Critère d'appréciation*], [*Niveau chiffré*], [*Flex.*]),
    [FP1], [Transmettre la puissance du producteur d'énergie au fluide entrant], [Puissance hydraulique\ Rendement énergétique global], [250 W à 3 000 tr/min\ $eta >= 65 %$], [$F_0$\ $F_1$],
    [FP2], [Transformer le fluide entrant en fluide sortant], [Débit volumique de circulation\ Pression manométrique $Delta P$\ Étanchéité interne], [40 à 120 L/min selon régime\ 0,8 à 1,5 bar\ Fuite dynamique nulle], [$F_0$\ $F_1$\ $F_0$],
    [FP3], [Guider la poulie en rotation dans le référentiel], [Vitesse de rotation maximale\ Jeu radial sous charge\ Durée de vie du guidage], [6 500 tr/min\ $< 0,03 "mm"$\ 150 000 km / 5 ans], [$F_0$\ $F_1$\ $F_0$]
  )
]

#slide(title: "14. Tableau de Caractérisation : Fonctions Contraintes (FC)")[
  #set text(size: 10pt)
  #table(
    columns: (0.8fr, 2.3fr, 2.3fr, 2fr, 0.6fr),
    fill: (x, y) => if y == 0 { cnam-blue } else if calc.even(y) { rgb("#F8FAFC") } else { white },
    stroke: 0.4pt + rgb("#CBD5E1"),
    inset: (x: 6pt, y: 6pt),
    table.header([*Réf.*], [*Énoncé normé*], [*Critère d'appréciation*], [*Niveau chiffré*], [*Flex.*]),
    [FC1], [S'adapter au carter-cylindres et assurer l'étanchéité], [Planéité surface d'accostage\ Taux de fuite statique joint], [Défaut $< 0,05 "mm"$\ 0 fuite à 2 bars], [$F_0$\ $F_0$],
    [FC2], [Supporter les efforts de la courroie crantée], [Effort radial admissible\ Fréquence propre de flexion], [$F_r = 2 500 "N"$\ $> 300 "Hz"$], [$F_0$\ $F_1$],
    [FC3], [Résister au milieu ambiant sous capot], [Tenue à la corrosion saline\ Plage de température], [Brouillard salin 480 h\ -40°C à +125°C], [$F_1$\ $F_0$],
    [FC4], [Respecter l'encombrement sous capot], [Volume enveloppe maximal\ Masse totale du corps], [$220 times 160 times 130 "mm"$\ $< 1,8 "kg"$ coulé], [$F_0$\ $F_2$]
  )
]

#slide(title: "15. Énoncé de Synthèse du Cahier des Charges Fonctionnel")[
  #v(0.3cm)
  #card(title: "Exigence Globale Contractuelle (Extrait du CdCF)", border-color: cnam-red)[
    #text(size: 13pt, style: "italic")[
      « Le système doit transmettre une puissance mécanique continue de *250 W* sous la forme d'un débit et d'une pression régulés pendant toute la durée d'utilisation du moteur lorsqu'il tourne, en garantissant un fonctionnement sans entretien pendant *3 ans minimum (ou 150 000 km)*, du producteur d'énergie mécanique au fluide caloporteur entrant, situé à un endroit précis, avec un potentiel énergétique défini, et dont la composition physico-chimique est connue. »
    ]
  ]
  #v(0.4cm)
  #card(title: "Conséquence Immédiate pour la Conception", border-color: cnam-blue)[
    Toute proposition de solution technique devra impérativement satisfaire cette exigence quantitative avant d'être retenue !
  ]
]

#slide(title: "16. Étape 5 : Définition des Principes Technologiques")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Le FAST de Créativité (Bytheway, 1964)", border-color: cnam-red)[
        - Outil inventé par Charles W. Bytheway, enrichi par la méthode APTE.
        - *Objectif :* Balayer l'ensemble des solutions offertes par les sciences appliquées avant de fixer un choix technique.
        - *Axes d'interrogation :*
          - *POURQUOI ?* (vers la gauche) : Finalité de la fonction.
          - *COMMENT ?* (vers la droite) : Décomposition en principes.
          - *QUAND ?* (verticalement) : Simultanéité temporelle.
      ]
    ],
    [
      #card(title: "FAST Descriptif vs FAST Créatif", border-color: cnam-blue)[
        - *FAST Descriptif (Chapitre 2) :* Analyse d'un produit déjà conçu dont les solutions sont figées.
        - *FAST de Créativité (Ce Chapitre) :* Démarche d'innovation explorant tous les domaines de la physique :
          - Mécanique des solides indéformables (PFD / PFS).
          - Mécanique des solides déformables (MMC).
          - Mécanique des fluides (Bernoulli).
          - Électromagnétisme (sustentation magnétique).
      ]
    ]
  )
]

#slide(title: "17. FAST de Créativité : Structure & Démarche")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "Les 3 Axes d'Interrogation FAST", border-color: cnam-red)[
        - *POURQUOI ? (vers la gauche) :* \
          Justifie la raison d'être et la finalité de chaque fonction.
        - *COMMENT ? (vers la droite) :* \
          Décompose la fonction en principes de plus en plus concrets.
        - *QUAND ? (verticalement) :* \
          Identifie les fonctions ou actions menées en simultanéité temporelle.
      ]
    ],
    [
      #card(title: "La Chaîne d'Innovation APTE / Cnam", border-color: cnam-blue)[
        #align(center)[
          *Fonction de Service (CdCF)* \
          $arrow.b$ \
          *Principes issus des Sciences Appliquées* \
          (Mécanique classique, fluides, élasticité, magnétisme) \
          $arrow.b$ \
          *Principes Technologiques* \
          (Rouet à aubes, volute spirale, roulement étanche) \
          $arrow.b$ \
          *Solutions Constructives & Composants CAO*
        ]
      ]
    ]
  )
]

#slide(title: "18. FAST Multi-Fonctions Appliqué au Corps de Pompe")[
  #table(
    columns: (1.2fr, 1.8fr, 2fr),
    fill: (x, y) => if y == 0 { cnam-blue } else if calc.even(y) { rgb("#F8FAFC") } else { white },
    stroke: 0.4pt + rgb("#CBD5E1"),
    inset: (x: 8pt, y: 7pt),
    table.header([*Fonction de service*], [*Science appliquée explorée*], [*Principe technologique retenu*]),
    [FP1 : Transmettre la puissance au fluide],
    [Mécanique des solides indéformables (Dynamique / PFD)],
    [*Rouet centrifuge à pales tournantes*\ (écartés : membrane pulsatile, souffleur)],
    [FP2 : Transformer fluide entrant en sortant],
    [Mécanique des solides indéformables (Statique / Bernoulli)],
    [*Volute spirale divergente et canal*\ (conversion énergie cinétique en pression)],
    [FP3 : Guider la poulie dans le référentiel],
    [Mécanique de contact solide indéformable],
    [*Roulement double étanche à billes*\ (exploré : sustentation magnétique sans contact)]
  )
  #v(0.3em)
  #card(title: "Conclusion sur les Formes de la Pièce", border-color: cnam-red)[
    La volute et le rotor répondent à FP1 et FP2 ; le logement d'alésage répond à FP3 ; le plan de joint et les bossages répondent aux contraintes de fabrication (fonderie) et de maintenance (démontage).
  ]
]

#slide(title: "19. Analyse des Choix & Justification par les Équations")[
  #grid(
    columns: (1fr, 1fr),
    gutter: 14pt,
    [
      #card(title: "FP1 — Transmettre la Puissance", border-color: cnam-red)[
        #set text(size: 10pt)
        - *Principe retenu :* Solide indéformable tournant (*rouet centrifuge à aubes*).
        - *Validation PFD :* Le couple appliqué à la vitesse $omega$ fournit $P = bold(C) dot bold(omega) = 250 "W"$.
        - *Solutions écartées :* Membrane pulsatile (débit cyclique, fatigue) ; souffleur d'air (fluide liquide monophasique).
      ]
      #v(0.2em)
      #card(title: "FP2 — Transformer le Fluide", border-color: cnam-blue)[
        #set text(size: 10pt)
        - *Principe retenu :* Solide indéformable fixe (*volute spirale*).
        - *Validation Bernoulli :* Conversion de la vitesse d'éjection en pression statique $Delta P$.
      ]
    ],
    [
      #card(title: "FP3 — Guider la Poulie", border-color: cnam-blue)[
        #set text(size: 10pt)
        - *Principe retenu :* Mécanique par contact (*roulement à billes double étanche*).
        - *Alternative explorée :* Palier magnétique sans contact (écarté car surcoût et masse bobinages injustifiés sur moteur thermique grand public).
      ]
      #v(0.2em)
      #card(title: "Bilan Pédagogique", border-color: cnam-red)[
        #set text(size: 10pt)
        Le produit abouti résulte directement de l'arbitrage entre les principes théoriques et les contraintes du profil de vie (moulage, usinage, étanchéité, maintenance).
      ]
    ]
  )
]

#slide(title: "20. Synthèse du Chapitre 1 & Transition vers l'AFT")[
  #grid(
    columns: (1.1fr, 0.9fr),
    gutter: 14pt,
    [
      #card(title: "Ce qu'il faut retenir du Chapitre 1", border-color: cnam-red)[
        - Délimiter rigoureusement la frontière d'étude avant toute conception.
        - Valider la pérennité du besoin via les *phrases autocorrectives*.
        - Dresser l'inventaire complet du *Profil de Vie* (*U* vs *H.U.*).
        - Construire le *Graphe des Interacteurs* avec *Référentiel* et *Producteur d'énergie*.
        - Renseigner le *Tableau de Caractérisation* ($F_0$ à $F_3$).
        - Ouvrir l'espace des solutions grâce au *FAST de Créativité*.
      ]
    ],
    [
      #card(title: "Cap sur le Chapitre 2 : AFT", border-color: cnam-blue)[
        L'*Analyse Fonctionnelle Technique (AFT)* prendra le relais pour :
        - Établir le *FAST descriptif* et le *bloc-diagramme fonctionnel*.
        - Identifier les *surfaces fonctionnelles de contact*.
        - Renseigner le *Tableau d'Analyse Fonctionnelle et Technique (TAFT)* en préparation de la CAO sous FreeCAD.
      ]
    ]
  )
]
