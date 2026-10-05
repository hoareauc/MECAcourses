// cours.typ - Chapitre 01 : Analyse Fonctionnelle du Besoin (AFB)
#import "cnam-template.typ": *

#show: cnam-chapter-doc.with(
  chapter-num: "01",
  chapter-title: "Analyse Fonctionnelle du Besoin (AFB)",
  course-title: "Conception Mécanique",
  author: "Christophe Hoareau",
  filiere: "Cours du soir HTT — FAB113 (60h)"
)

= Analyse Fonctionnelle du Besoin (AFB)

== Introduction et Justification de la Démarche

Dans le cycle de développement d'un produit industriel, l'erreur la plus fréquente consiste à figer prématurément une solution technologique avant d'avoir cerné avec rigueur le problème à résoudre. Concevoir une pièce mécanique ne se résume pas à dessiner des formes sous un logiciel de CAO : chaque surface, chaque perçage, chaque nervure et chaque tolérance sur un plan de définition doit trouver sa légitimité dans un besoin fonctionnel précis.

L'*Analyse Fonctionnelle du Besoin (AFB)* constitue la première étape incontournable de la démarche de conception. Normalisée au niveau français et international (notamment par les normes _NF EN 1325_ et _NF X50-151_), elle permet d'exprimer les exigences du client ou des utilisateurs en termes de finalités et de services attendus, indépendamment de toute solution constructive préconçue.

#definition(title: "Analyse Fonctionnelle du Besoin (AFB)")[
  L'AFB est une démarche méthodique visant à exprimer, caractériser, ordonner et valoriser les fonctions d'un produit attendues par l'utilisateur tout au long de son cycle de vie. Elle s'attache exclusivement à décrire *ce que doit faire le produit* (le service rendu) sans préjuger de *comment il le fera* (la solution technique).
]

#methode(title: "La chaîne causale de la conception mécanique")[
  Une conception rigoureuse repose sur un fil directeur logique et continu :
  #align(center)[
    *Besoin validé* $arrow.r$ *Fonction de service (AFB)* $arrow.r$ *Principe technologique (FAST)* $arrow.r$ *Fonction technique & Surfaces (AFT)* $arrow.r$ *Spécification ISO-GPS*
  ]
]

=== Le Cas d'Étude Fil Rouge : Le Corps de Pompe à Eau du Moteur F (Renault)

Pour illustrer concrètement l'ensemble des concepts de ce cours, nous nous appuierons sur l'étude d'un produit industriel éprouvé : le *corps de pompe à eau du moteur Renault type F* (moteur thermique essence et diesel ayant équipé des millions de véhicules tels que la Mégane, le Scénic, la Laguna et la Clio).

Face à une pompe centrifuge existante, une première constatation s'impose :
- Sur le plan fonctionnel schématique, le principe de pompage centrifuge ne requiert que *deux composants fondamentaux* : un _rotor_ (rouet tournant muni d'aubes) et un _carter_ (volute assurant le guidage et la diffusion du fluide).
- Sur le produit industriel abouti, la pièce réelle est d'une grande complexité géométrique : elle comporte *quatre composants principaux*, de multiples nervures structurales, une scission du carter en deux sous-ensembles, des oreilles de fixation, des bossages d'usinage et des vis d'assemblage.

#attention(title: "D'où provient la complexité d'une pièce industrielle ?")[
  La complexité d'un produit abouti ne résulte pas d'un caprice du concepteur, mais de l'intégration impérative de l'ensemble des contraintes du *profil de vie* : procédés de moulage en fonderie, accessibilité des outils d'usinage, facilité d'assemblage en chaîne, diagnostic rapide en atelier de réparation et étanchéité absolue à l'arrêt comme en rotation.
]

---

== Définition du Périmètre de l'Étude & Données Préliminaires

Toute étude d'ingénierie commence par la définition claire et sans équivoque de la *frontière d'étude*. Cette phase préliminaire conditionne directement la pertinence de tous les outils qui suivront.

#methode(title: "Démarche d'établissement du périmètre")[
  À ce stade préliminaire, aucun outil mathématique lourd n'est requis ; la démarche fait appel au bon sens d'ingénieur et à une stratégie en trois étapes :
  1. *Inventaire des composants environnants :* Lister tous les organes mécaniques situés au voisinage direct du composant à modifier ou à reconcevoir.
  2. *Analyse des interactions :* Identifier les flux de puissance mécanique, les liaisons cinématiques, les contacts surfaciques, les flux de matière (fluide) et les transferts thermiques échangés.
  3. *Choix argumenté des composants à intégrer dans la frontière :* Statuer de manière explicite sur ce qui appartient au *système étudié* (sous la responsabilité du concepteur) et ce qui appartient au *milieu extérieur* (qui impose des contraintes).
]

Dans le cas de notre étude sur le moteur F, le périmètre est arrêté comme suit :
- *Composants intégrés au système étudié :* Le corps de pompe (volute et carter intérieur), l'arbre rotor, le palier / roulement et le système d'étanchéité dynamique.
- *Composants exclus du système (Milieu Extérieur) :* Le carter-cylindres (bloc moteur en fonte), la poulie d'entraînement, la courroie de distribution, le liquide de refroidissement et le milieu ambiant sous capot.

---

== Définition et Validation du Besoin (Le Graphe du Besoin / « Bête à Cornes »)

La définition du besoin est une étape délicate car les sollicitations initiales d'un client sont souvent subjectives, imprécises ou polluées par des a priori technologiques. Pour formaliser cette étape, on utilise l'outil graphique normalisé communément appelé *Graphe du Besoin* ou *Bête à Cornes*.

#definition(title: "Le Besoin selon la norme NF X50-151")[
  Le besoin est une nécessité ou un désir éprouvé par un utilisateur. Il se structure autour de trois questions fondamentales :
  - *À qui (ou à quoi) le système rend-il service ?* (Le bénéficiaire direct ou indirect : au circuit de refroidissement et au bloc moteur).
  - *Sur qui (ou sur quoi) le système agit-il ?* (La matière d'œuvre modifiée : sur le fluide caloporteur / liquide de refroidissement).
  - *Dans quel but le système existe-t-il ?* (La finalité globale du produit : assurer la circulation forcée du liquide afin d'évacuer les calories excédentaires).
]

=== La Stratégie d'Enrichissement et les Phrases Autocorrectives

Pour s'assurer que le besoin est stable, réel et pérenne, le concepteur doit appliquer la méthode des *phrases autocorrectives* qui consiste à éprouver la légitimité du système face aux évolutions futures du marché et des technologies :

1. *Pourquoi ce besoin existe-t-il ?* \
   Pour évacuer les calories excédentaires générées par la combustion interne du moteur thermique et maintenir l'ensemble des organes mécaniques (culasse, pistons, chemises) dans une plage thermique garantissant le rendement et la lubrification (typiquement 85°C à 105°C).
2. *Qu'est-ce qui pourrait faire évoluer ce besoin ?* \
   - L'apparition de dispositifs de régulation thermique active pilotés électroniquement (pompes électriques à débit variable).
   - L'allègement des véhicules imposant une réduction drastique de la masse et des pertes par frottement.
3. *Qu'est-ce qui pourrait faire disparaître le besoin ?* \
   - Le passage intégral à des groupes motopropulseurs électriques ou à hydrogène éliminant le moteur thermique traditionnel (bien que les batteries et électroniques de puissance nécessitent également un refroidissement, les grandeurs thermiques et les plages de température diffèrent profondément).
   - Le développement de moteurs thermiques adiabatiques en céramique à très haute température sans refroidissement liquide.
4. *Conclusion de la validation :* \
   Le besoin est pleinement *validé* pour l'ensemble du cycle de production des véhicules thermiques et hybrides de cette génération.

---

== Définition du Profil de Vie du Système

Le produit mécanique ne commence pas sa vie lors de son utilisation par le client final, et il ne la termine pas à son premier arrêt. La performance économique et écologique d'une conception réside dans sa capacité à intégrer *toutes les phases de vie* du système.

#definition(title: "Profil de vie")[
  Le profil de vie est l'inventaire chronologique et exhaustif de toutes les situations rencontrées par le produit, depuis sa conception initiale jusqu'à son recyclage final. Il distingue rigoureusement deux catégories d'états :
  - Les phases *En Utilisation (U)* : moments où le produit remplit la mission principale pour laquelle il a été conçu.
  - Les phases *Hors Utilisation (H.U.)* : phases amont, aval ou intermédiaires (fabrication, transport, manutention, stockage, maintenance, démontage) qui imposent des contraintes majeures de conception.
]

=== Inventaire Exhaustif des Phases et Sous-Phases de Vie

Pour chaque sous-phase identifiée, la méthode Cnam impose de renseigner quatre rubriques indispensables :
- L'*entité concernée* (bureau d'études, atelier de fonderie, transporteur, propriétaire, mécanicien...).
- Les *contraintes associées* (moyens matériels, humains, logiciels, environnement physico-chimique).
- Les *livrables exigés* (modèle 3D, parcours d'outil, pièce brute, niveau d'étanchéité, temps de réparation).
- Le statut d'utilisation : *U* ou *H.U.*.

#table(
  columns: (1.3fr, 1.5fr, 1.4fr, 2.5fr, 2fr, 0.6fr),
  fill: (x, y) => if y == 0 { cnam-blue } else if calc.even(y) { rgb("#F8FAFC") } else { white },
  stroke: 0.4pt + rgb("#CBD5E1"),
  inset: (x: 6pt, y: 6pt),
  table.header(
    [*Phase*], [*Sous-phase*], [*Entité*], [*Contraintes (Moyens / Qualité)*], [*Livrables exigés*], [*Statut*]
  ),
  [Concrétisation], [Définition du système], [Bureau d'études], [4 apprentis ingénieurs plein temps, 1 consultant partiel, CATIA V5, pas de supercalculateur, délai 6 semaines], [Maquette 3D, simulation cinématique, proto ABS, CdCF, calculs], [H.U.],
  [Concrétisation], [Industrialisation], [Bureau des méthodes], [Logiciels CFAO, centres d'usinage, bancs de test outillage], [Dossier de fabrication, parcours d'outils, gammes], [H.U.],
  [Concrétisation], [Fabrication & Assemblage], [Usine / Fonderie], [Fonderie aluminium coquille/sous pression, centres d'usinage 3 axes, robots d'assemblage], [Pièces brutes et usinées conformes, ensemble monté], [H.U.],
  [Distribution], [Stockage & Transport], [Logistique], [Empilage, chocs de manutention, vibrations routières, humidité saline], [Colisage protecteur, aucune altération mécanique], [H.U.],
  [Distribution], [Commercialisation], [Réseau de vente], [Délais de livraison courts, coût cible unitaire, esthétique du brut], [Produit disponible en 1ère monte et rechange (2e monte)], [H.U.],
  [Intégration], [Montage sur moteur], [Usine montage], [Accostage rapide sur carter-cylindres, serrage au couple par visseuse], [Positionnement précis, planéité joint d'étanchéité], [H.U.],
  [Exploitation], [Utilisation active], [Conducteur], [Pompage continu du liquide, puissance 250 W, pas de bruit ni vibration parasite], [Débit et pression conformes, acoustique feutrée], [U],
  [Exploitation], [Utilisation passive], [Propriétaire], [Véhicule stationné à l'arrêt : aucune pollution du sol (zéro goutte au sol)], [Étanchéité statique parfaite à chaud et à froid], [U],
  [Exploitation], [Maintenance], [Garagiste], [Diagnostic aisé de défaillance, accessibilité visuelle et outillage standard], [Produit afficheur de fuite, démontable en < 45 min], [H.U.],
  [Destruction], [Désassemblage & Recyclage], [Filière VHU], [Désolidarisation aisée du bloc moteur, séparation des matériaux], [Corps alu recyclable, roulement acier trié], [H.U.]
)

#remarque(title: "L'origine de l'insatisfaction client sur le produit initial")[
  L'analyse détaillée du profil de vie met en lumière un phénomène capital : les retours en garantie et l'insatisfaction sur la pompe initiale provenaient du fait qu'une fuite du joint tournant restait invisible jusqu'au serrage complet du moteur thermique par manque de liquide. Le garagiste et l'utilisateur exigeaient un composant « *afficheur de fuite* » (orifice d'évacuation guidé permettant de détecter un suintement précurseur lors d'un contrôle visuel).
]

---

== Définition des Fonctions de Service et Contraintes

Une fois le profil de vie documenté, le concepteur dispose de toutes les informations pour formaliser les *fonctions de service* du produit. L'outil privilégié pour cette phase est le *Graphe des Interacteurs* (ou _Diagramme Pieuvre_, issu de la méthode APTE).

#definition(title: "Fonctions de Service & Fonctions Contraintes")[
  - *Fonction Principale (FP) ou de Service :* Relation directe établie par l'intermédiaire du système entre au moins deux Éléments du Milieu Extérieur (EME) pour satisfaire le besoin fondamental.
  - *Fonction Contrainte (FC) :* Exigence imposée au système par un seul Élément du Milieu Extérieur (adaptation dimensionnelle, résistance aux agressions climatiques, normes de sécurité).
]

=== Règles Formelles de Modélisation du Graphe des Interacteurs

Le respect de la syntaxe graphique est indispensable pour garantir une analyse neutre et rigoureuse :
1. *Système central :* Tracé sous forme d'une ellipse centrale. Il est formellement interdit d'utiliser un terme évoquant déjà une solution technique (ne pas écrire « pompe centrifuge », mais « Système de mise en circulation » ou « Corps de pompe »).
2. *Éléments du Milieu Extérieur (EME) :* Représentés par des ellipses périphériques entourant le système.
3. *Tracé courbe :* Utilisé exclusivement pour les fonctions principales de service qui relient deux EME à travers le système.
4. *Tracé droit (rectiligne) :* Utilisé pour les fonctions de contrainte reliant un seul EME au système.
5. *Intégration d'un Référentiel neutre :* Dès qu'un système mécanique assure un guidage en rotation, un positionnement spatial ou une reprise d'efforts, il est obligatoire d'introduire l'EME générique « *Référentiel* ».
6. *Intégration d'un Producteur d'énergie :* En vertu du premier principe de la thermodynamique et des lois de conservation de l'énergie, un fluide ne peut pas voir sa puissance hydraulique augmenter spontanément. L'apport d'énergie mécanique externe étant indispensable, l'EME générique « *Producteur d'énergie (ou puissance)* » doit être systématiquement rattaché au graphe.
7. *Prise en compte des EME bi-états :* Lorsque la matière d'œuvre change d'état au travers du système, on dédouble l'EME en deux états : $"EME"_(1a)$ (état initial entrant) et $"EME"_(1b)$ (état transformé sortant).
8. *Systèmes autonomes :* Si le produit emporte sa propre source d'énergie (ex: batterie intégrée), celle-ci est englobée dans la frontière en pointillés pour maintenir la cohérence du formalisme.

=== Application au Corps de Pompe à Eau (Sous-phase Utilisation Active)

En appliquant ces règles à la sous-phase d'*utilisation active*, les fonctions identifiées s'énoncent selon la norme (verbe à l'infinitif + compléments désignant les EME, sans mention de la solution) :
- *FP1 (Besoin primaire) :* Transmettre la puissance mécanique du producteur d'énergie au fluide caloporteur entrant.
- *FP2 (Besoin secondaire) :* Transformer le fluide caloporteur entrant en fluide sortant (élévation de pression et guidage directionnel vers les chemises du bloc).
- *FP3 :* Guider la poulie d'entraînement en rotation dans le référentiel mécanique.
- *FC1 :* S'adapter géométriquement et assurer l'étanchéité statique avec le carter-cylindres.
- *FC2 :* Supporter les efforts radiaux et axiaux induits par la tension de la courroie de distribution.
- *FC3 :* Résister aux agressions corrosives, thermiques et chimiques du milieu ambiant sous capot.
- *FC4 :* S'inscrire dans l'enveloppe spatiale allouée de l'environnement compartiment moteur.
- *FC5 :* Résister chimiquement et thermiquement à l'agressivité du liquide de refroidissement à 110°C sous 1,5 bar.

---

== Caractérisation des Fonctions & Cahier des Charges Fonctionnel (CdCF)

Une fonction énoncée en langage naturel demeure insuffisante pour guider le dimensionnement. Pour être exploitable par l'ingénieur, chaque fonction doit être caractérisée à travers des grandeurs physiques mesurables.

#definition(title: "Les rubriques du Tableau de Caractérisation")[
  Conformément à la norme NF X50-151, chaque fonction est définie selon :
  - *Critère d'appréciation :* Grandeur physique ou qualitative retenue pour apprécier l'efficacité de la fonction (pression, débit, température, masse, durée de vie, niveau acoustique).
  - *Niveau d'appréciation :* Valeur numérique cible assortie de sa tolérance admissible ($250 "W" plus.minus 10%$, $150 000 "km"$, $0 "goutte"$).
  - *Classe de flexibilité :* Degré de négociation possible sur le niveau requis :
    - $F_0$ : Flexibilité nulle, niveau impératif et non négociable.
    - $F_1$ : Flexibilité faible, négociation sous réserve d'arbitrage.
    - $F_2$ : Flexibilité moyenne, niveau négociable contre compensation.
    - $F_3$ : Flexibilité forte, niveau purement indicatif.
]

#attention(title: "Variabilité de la flexibilité selon l'interlocuteur")[
  La classe de flexibilité n'est pas absolue : elle dépend directement de l'EME en jeu. Par exemple, pour la fonction « Permettre la vidange rapide du liquide », le critère de temps d'intervention sera de flexibilité $F_0$ (impératif) pour un atelier professionnel de concession, mais de flexibilité $F_2$ (tolérante) pour un utilisateur particulier réalisant l'opération lui-même.
]

#table(
  columns: (0.7fr, 2.2fr, 2.2fr, 1.8fr, 0.7fr),
  fill: (x, y) => if y == 0 { cnam-red } else if calc.even(y) { rgb("#FEF2F4") } else { white },
  stroke: 0.4pt + cnam-red.lighten(60%),
  inset: (x: 6pt, y: 6pt),
  table.header(
    [*Réf.*], [*Énoncé de la fonction*], [*Critère d'appréciation*], [*Niveau d'appréciation*], [*Flex.*]
  ),
  [FP1], [Transmettre la puissance du producteur d'énergie au fluide entrant], [Puissance hydraulique utile\ Rendement énergétique global], [250 W à 3000 tr/min\ $eta >= 65 %$], [$F_0$\ $F_1$],
  [FP2], [Transformer le fluide entrant en fluide sortant], [Débit volumique de circulation\ Élévation de pression $Delta P$\ Étanchéité interne], [40 à 120 L/min selon régime\ 0,8 à 1,5 bar\ Fuite dynamique nulle], [$F_0$\ $F_1$\ $F_0$],
  [FP3], [Guider la poulie en rotation dans le référentiel], [Vitesse de rotation maximale\ Jeu radial sous charge\ Durée de vie du guidage], [6 500 tr/min\ $< 0,03 "mm"$\ 150 000 km / 5 ans], [$F_0$\ $F_1$\ $F_0$],
  [FC1], [S'adapter au carter-cylindres et assurer l'étanchéité], [Planéité surface d'accostage\ Taux de fuite statique joint\ Entraxe de fixation], [Défaut $< 0,05 "mm"$\ 0 fuite à 2 bars\ $plus.minus 0,1 "mm"$], [$F_0$\ $F_0$\ $F_0$],
  [FC2], [Supporter les efforts de la courroie], [Effort radial admissible\ Fréquence propre de flexion], [$F_r = 2500 "N"$\ $> 300 "Hz"$], [$F_0$\ $F_1$],
  [FC3], [Résister au milieu ambiant sous capot], [Tenue à la corrosion saline\ Plage de température externe], [Essai brouillard salin 480 h\ -40°C à +125°C], [$F_1$\ $F_0$],
  [FC4], [Respecter l'encombrement sous capot], [Volume géométrique enveloppe\ Masse totale du corps assemblé], [$220 times 160 times 130 "mm"$\ $< 1,8 "kg"$ (corps coulé)], [$F_0$\ $F_2$],
  [FC5], [Résister chimiquement au fluide caloporteur], [Compatibilité matière / liquide\ Corrosion galvanique bloc fonte/alu], [Absence de piqûres après 1500 h\ Potentiel d'oxydoréduction maîtrisé], [$F_0$\ $F_0$]
)

=== Synthèse du Cahier des Charges Fonctionnel (CdCF)

L'aboutissement de cette étape permet de formuler l'exigence contractuelle globale :
#cnam-box(title: "Synthèse de l'exigence fonctionnelle")[
  _« Le système doit transmettre une puissance mécanique continue de 250 W sous forme d'un débit volumique régulé et d'une pression manométrique de 1,2 bar, pendant toute la durée de rotation du moteur, en garantissant une étanchéité absolue et une durée de vie sans entretien de 150 000 km (ou 5 ans), depuis le producteur d'énergie cinétique (vilebrequin) jusqu'au liquide de refroidissement caloporteur circulant dans le carter-cylindres. »_
]

---

== Définition des Principes Technologiques (Le FAST de Créativité)

Une fois le CdCF formalisé, l'équipe de conception doit générer des solutions innovantes. Pour éviter de reproduire à l'identique une solution existante sans explorer les alternatives, la méthodologie Cnam s'appuie sur le *FAST de Créativité* (_Function Analysis System Technique_).

#definition(title: "Le FAST de Créativité (Bytheway, 1964)")[
  Initialisé en 1964 par Charles W. Bytheway et perfectionné par le cabinet APTE, le FAST de créativité est un graphe arborescent ordonné selon une logique interrogative stricte :
  - *POURQUOI ?* (vers la gauche) : Justifie la finalité d'une fonction.
  - *COMMENT ?* (vers la droite) : Décompose la fonction en principes de plus en plus concrets.
  - *QUAND ?* (verticalement) : Indique les actions menées en simultanéité temporelle.
  
  Contrairement au FAST descriptif (qui dissèque un produit déjà figé), le _FAST de créativité_ part de la fonction de service pour explorer l'ensemble des *principes issus des sciences appliquées*, avant de dériver vers des *principes technologiques*.
]

=== Décomposition par les Sciences Appliquées en Mécanique

Pour stimuler la créativité sans préjugé technologique, on balaye systématiquement les différentes branches de la physique appliquée :
1. *Mécanique classique (newtonienne) :*
   - *Mécanique des solides indéformables :*
     - Statique (PFS) : guidage rigide, butée fixe, canalisation d'un fluide.
     - Cinématique et Dynamique (PFD) : accélération de matière par transfert d'énergie cinétique (pales, aubes, rotors centrifuges).
   - *Mécanique des solides déformables (MMC) :* élasticité, déformation périodique d'une membrane, ressort amortisseur, effet piézoélectrique.
2. *Mécanique des fluides (Hydraulique et Aéraulique) :*
   - Fluides liquides : pompes volumétriques, éjecteurs Venturi, pompes à émulsion, cavitation maîtrisée.
   - Fluides gazeux : turbines à air, compresseurs, souffleurs pneumatiques.
3. *Électromagnétisme & Thermodynamique :*
   - Interactions magnétostatiques (aimants permanents, ferromagnétisme).
   - Sustentation magnétique active (paliers sans frottement).
   - Changement de phase liquide-vapeur (caloducs à évaporation/condensation).

=== Application au Choix des Principes du Corps de Pompe à Eau

La confrontation des principes scientifiques aux exigences quantifiées du CdCF conduit aux choix d'ingénierie suivants :

- *Fonction FP1 (Transmettre la puissance au fluide entrant) :*
  - _Option Solides indéformables (dynamique) :_ Rouet centrifuge à aubes tournantes. Les équations de la dynamique ($bold(C) dot bold(omega) = Delta P dot Q$) confirment que ce principe permet de délivrer les 250 W requis dans un encombrement minimal avec un rendement élevé ($> 70 %$). *Solution retenue.*
  - _Option Solides déformables :_ Membrane élastique pulsatile. Écartée car le débit produit est pulsé et la durée de vie en fatigue cyclique est incompatible avec les 150 000 km.
  - _Option Fluides gazeux :_ Souffleur d'air forcé. Écarté car inadapté à un fluide liquide monophasique à haute chaleur massique.

- *Fonction FP2 (Transformer le fluide entrant en fluide sortant) :*
  - _Option Solides indéformables (statique) :_ Volute spirale fixe à section divergente. Les équations de Bernoulli démontrent que la géométrie divergente de la volute transforme efficacement l'énergie cinétique ($1/2 rho v^2$) en pression statique ($Delta P$). *Solution retenue.*

- *Fonction FP3 (Guider la poulie dans le référentiel) :*
  - _Option Mécanique par contact solide :_ Roulement à billes / rouleaux étanche graissé à vie. *Solution industrielle standard retenue.*
  - _Option Paliers hydrodynamiques :_ Intéressante mais nécessite une pression d'huile externe inexistante au démarrage à froid.
  - _Option Palier magnétique sans contact :_ Explorée pour les applications d'hyper-haute vitesse ou véhicules de compétition (suppression totale de l'usure mécanique), mais écartée ici en raison du coût et de la masse des bobinages.

#methode(title: "Conclusion sur la reconception du corps de pompe")[
  La démarche d'AFB suivie du FAST de créativité permet de comprendre précisément la morphologie finale du corps de pompe :
  - La volute spirale et le rotor répondent directement à FP1 et FP2.
  - Le logement cylindrique d'alésage répond au roulement de FP3.
  - La scission en deux pièces avec plan de joint répond aux contraintes de fonderie coquille (dépouilles) et d'accessibilité de montage du roulement.
  - Les bossages d'assemblage et les vis répondent à la démontabilité lors de la maintenance.
  - L'orifice inférieur de drainage répond au besoin d'un produit « *afficheur de fuite* ».
]

---

== Résumé et Compétences Acquises

À l'issue de ce premier chapitre, les auditeurs maîtrisent les fondamentaux de l'Analyse Fonctionnelle du Besoin :
- *C1.1 :* Savoir délimiter la frontière d'une étude mécanique et inventorier les composants environnants.
- *C1.2 :* Construire et valider un Graphe du Besoin (« Bête à cornes ») à l'aide de phrases autocorrectives.
- *C1.3 :* Dresser le tableau exhaustif du Profil de Vie en identifiant les contraintes d'utilisation (U) et hors utilisation (H.U.).
- *C1.4 :* Modéliser les interactions sous forme de Graphe des Interacteurs normalisé (diagramme pieuvre), en introduisant systématiquement le *Référentiel*, le *Producteur d'énergie* et la distinction des *EME bi-états*.
- *C1.5 :* Rédiger et renseigner le Tableau de Caractérisation des Fonctions avec critères, niveaux et flexibilités ($F_0$ à $F_3$).
- *C1.6 :* Utiliser le FAST de Créativité pour explorer l'ensemble des principes issus des sciences appliquées avant de fixer les principes technologiques de la pré-conception.
