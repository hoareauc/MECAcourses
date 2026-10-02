# MECAcourses — Conception Mécanique & Pré-conception CAO

[![Cnam](https://img.shields.io/badge/Cnam-Paris-A60038.svg)](https://www.cnam.fr)
[![Filière](https://img.shields.io/badge/UE-FAB113_Cours_du_soir_HTT-1B254B.svg)](#)
[![Format](https://img.shields.io/badge/Format-60h_Distance_Visio-blue.svg)](#)
[![Architecture](https://img.shields.io/badge/Organisation-1_dossier_par_chapitre-success.svg)](#)
[![Moteur](https://img.shields.io/badge/Rendu-100%25_Typst-239DAD.svg)](https://typst.app/)
[![Outil CAO](https://img.shields.io/badge/CAO-FreeCAD_0.21%2B-CB333B.svg)](https://www.freecad.org/)

Ressources pédagogiques pour l'Unité d'Enseignement **FAB113 — Conception Mécanique** (60 heures à distance) dispensée au **Conservatoire National des Arts et Métiers (Cnam)** en **cours du soir HTT (Hors Temps de Travail)**.

Responsable pédagogique : **Christophe Hoareau** (Équipe Pédagogique Nationale Mécanique — EPN 04).

---

## 📁 Architecture 100% Typst : Un Dossier par Chapitre

Chaque chapitre du cours est structuré en **dossier autonome** contenant à la fois son **support de cours** (polycopié A4) et son **support de présentation** (diaporama 16:9 pour les visios), tous deux rédigés en **Typst** aux couleurs officielles du Cnam (Rouge `#A60038`, Bleu marine `#1B254B`) :

```
MECAcourses/
├── .gitignore                          <- Exclusion des fichiers temporaires
├── README.md                           <- Documentation et guide
├── templates/                          <- Gabarits sources
│   ├── cnam-template.typ               <- Modèle de document de cours Typst
│   └── cnam-slides.typ                 <- Modèle de diapositives Typst (16:9)
│
├── 00_introduction/                    <- Organisation du module (60h), visio et FreeCAD
│   ├── cours.typ                       <- Document de cours (A4)
│   ├── cours.pdf                       <- PDF compilé
│   ├── slides.typ                      <- Diaporama de cours (16:9)
│   ├── slides.pdf                      <- PDF compilé
│   ├── cnam-template.typ               <- Gabarit local document
│   └── cnam-slides.typ                 <- Gabarit local slides
│
├── 01_analyse_fonctionnelle_besoin/    <- Chapitre 1 : AFB
│   ├── cours.typ                       <- Frontière, Bête à cornes, Interacteurs, CdCF, FAST créativité
│   ├── cours.pdf
│   ├── slides.typ
│   ├── slides.pdf
│   └── ...
│
├── 02_analyse_fonctionnelle_technique/ <- Chapitre 2 : AFT
│   ├── cours.typ                       <- FAST descriptif, Bloc diagramme, Contacts, TAFT
│   ├── cours.pdf
│   ├── slides.typ
│   ├── slides.pdf
│   └── ...
│
├── 03_mise_en_plan_tolerances/         <- Chapitre 3 : ISO GPS & Cotation
│   ├── cours.typ                       <- Normes ISO, Grille GPS, Chaînes de cotes
│   ├── cours.pdf
│   ├── slides.typ
│   ├── slides.pdf
│   └── ...
│
├── 04_preconception_retroingenierie_cao/ <- Chapitre 4 : CAO FreeCAD & Bruts
│   ├── cours.typ                       <- Surfaces fonctionnelles, Arbre PartDesign, Bruts, Rétro-ingénierie
│   ├── cours.pdf
│   ├── slides.typ
│   ├── slides.pdf
│   └── ...
│
└── 05_annexes/                         <- Documents d'approfondissement
    ├── cours.typ                       <- Liaisons, Ajustements, Mémo FreeCAD, Grille projet
    ├── cours.pdf
    ├── slides.typ
    ├── slides.pdf
    └── ...
```

---

## 📋 Contenu de Chaque Chapitre

Chaque dossier est prêt à être enrichi :
1. **Plan détaillé du cours** structuré selon le référentiel pédagogique.
2. **Texte d'attente (*lorem ipsum*)** simple à remplacer par votre contenu.
3. **Exemple de tableau technique** (CdCF, TAFT, Tolérances GPS, Procédés de brut, Liaisons).
4. **Exemple d'emplacement d'image/schéma** (Bête à cornes, actigramme BDF, chaîne de cotes, capture FreeCAD).
5. **Boîtes méthodologiques Cnam** (`#definition[...]`, `#methode[...]`, `#remarque[...]`, `#attention[...]`, `#freecad[...]`, `#norme[...]`).

---

## 🛠️ Instructions de Compilation avec Typst

Pour compiler un chapitre, entrez dans son dossier et lancez :

```powershell
cd 01_analyse_fonctionnelle_besoin

# 1. Compiler le polycopié de cours (A4)
typst compile cours.typ cours.pdf

# 2. Compiler les diapositives de présentation (16:9)
typst compile slides.typ slides.pdf
```

> **Compilation en temps réel :**  
> Lancez `typst watch cours.typ` ou `typst watch slides.typ` pour rafraîchir instantanément le PDF dès que vous sauvegardez.

---

## 🔗 Liaison GitHub (`hoareauc/MECAcourses`)

Pour publier vos modifications vers votre dépôt GitHub :

```powershell
git add .
git commit -m "Passage en 100% Typst : 1 dossier par chapitre (cours + slides 16:9)"
git push -u origin main
```
