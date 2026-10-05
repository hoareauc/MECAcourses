"""
generate_diagrams.py
Générateur de schémas vectoriels SVG pour le Chapitre 01 : Analyse Fonctionnelle du Besoin (AFB)
Charte graphique officielle du Cnam :
- Rouge Cnam : #A60038
- Rouge sombre : #7B0029
- Bleu Cnam : #1B254B
- Gris foncé : #1E293B
- Gris moyen : #64748B
- Fond carte : #FFFFFF
- Fond doux : #F8FAFC
- Bordure claire : #E2E8F0
- Vert succès : #059669
- Jaune/Orange attention : #D97706
"""

import os

OUTPUT_DIR = os.path.join(os.path.dirname(__file__), "images")
os.makedirs(OUTPUT_DIR, exist_ok=True)

def save_svg(filename, content):
    path = os.path.join(OUTPUT_DIR, filename)
    with open(path, "w", encoding="utf-8") as f:
        f.write(content.strip())
    print(f"Généré : {path}")

# ==============================================================================
# 1. BÊTE À CORNES (Graphe du Besoin)
# ==============================================================================
def make_bete_a_cornes():
    svg = """<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 880 500" width="880" height="500">
  <defs>
    <filter id="shadow" x="-5%" y="-5%" width="110%" height="115%" filterUnits="userSpaceOnUse">
      <feDropShadow dx="1" dy="3" stdDeviation="3" flood-color="#1B254B" flood-opacity="0.12"/>
    </filter>
    <marker id="arrow-red" viewBox="0 0 10 10" refX="6" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="#A60038" />
    </marker>
    <marker id="arrow-blue" viewBox="0 0 10 10" refX="6" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="#1B254B" />
    </marker>
  </defs>

  <!-- Fond général -->
  <rect width="880" height="500" rx="12" fill="#F8FAFC" stroke="#E2E8F0" stroke-width="1.5"/>

  <!-- Titre du schéma -->
  <rect x="20" y="16" width="840" height="36" rx="6" fill="#1B254B"/>
  <text x="440" y="40" font-family="Arial, Segoe UI, sans-serif" font-size="16" font-weight="bold" fill="#FFFFFF" text-anchor="middle">
    GRAPHE DU BESOIN (« BÊTE À CORNES ») — CORPS DE POMPE À EAU MOTEUR F (RENAULT)
  </text>

  <!-- Boîte Supérieure Gauche : À qui rend-il service ? -->
  <g filter="url(#shadow)">
    <rect x="40" y="75" width="340" height="100" rx="8" fill="#FFFFFF" stroke="#A60038" stroke-width="2"/>
    <rect x="40" y="75" width="340" height="28" rx="8" fill="#A60038"/>
    <text x="210" y="94" font-family="Arial, sans-serif" font-size="12" font-weight="bold" fill="#FFFFFF" text-anchor="middle">
      À qui / À quoi le système rend-il service ?
    </text>
    <text x="210" y="125" font-family="Arial, sans-serif" font-size="14" font-weight="bold" fill="#1B254B" text-anchor="middle">
      Au circuit de refroidissement
    </text>
    <text x="210" y="146" font-family="Arial, sans-serif" font-size="12" fill="#64748B" text-anchor="middle">
      (et indirectement au moteur thermique / conducteur)
    </text>
  </g>

  <!-- Boîte Supérieure Droite : Sur quoi agit-il ? -->
  <g filter="url(#shadow)">
    <rect x="500" y="75" width="340" height="100" rx="8" fill="#FFFFFF" stroke="#A60038" stroke-width="2"/>
    <rect x="500" y="75" width="340" height="28" rx="8" fill="#A60038"/>
    <text x="670" y="94" font-family="Arial, sans-serif" font-size="12" font-weight="bold" fill="#FFFFFF" text-anchor="middle">
      Sur qui / Sur quoi le système agit-il ?
    </text>
    <text x="670" y="125" font-family="Arial, sans-serif" font-size="14" font-weight="bold" fill="#1B254B" text-anchor="middle">
      Sur le fluide caloporteur
    </text>
    <text x="670" y="146" font-family="Arial, sans-serif" font-size="12" fill="#64748B" text-anchor="middle">
      (Liquide de refroidissement entrant / sortant)
    </text>
  </g>

  <!-- Lignes "Cornes" reliant le système aux deux questions du haut -->
  <path d="M 330 250 C 260 230 210 200 210 185" fill="none" stroke="#A60038" stroke-width="2.5" marker-end="url(#arrow-red)"/>
  <path d="M 550 250 C 620 230 670 200 670 185" fill="none" stroke="#A60038" stroke-width="2.5" marker-end="url(#arrow-red)"/>

  <!-- Boîte Centrale : SYSTÈME -->
  <g filter="url(#shadow)">
    <rect x="300" y="225" width="280" height="85" rx="42.5" fill="#FFFFFF" stroke="#1B254B" stroke-width="3"/>
    <text x="440" y="255" font-family="Arial, sans-serif" font-size="11" font-weight="bold" fill="#A60038" text-anchor="middle" letter-spacing="1">
      SYSTÈME ÉTUDIÉ
    </text>
    <text x="440" y="280" font-family="Arial, sans-serif" font-size="16" font-weight="bold" fill="#1B254B" text-anchor="middle">
      Corps de pompe à eau
    </text>
    <text x="440" y="298" font-family="Arial, sans-serif" font-size="11" fill="#64748B" text-anchor="middle">
      (Moteur Renault type F)
    </text>
  </g>

  <!-- Flèche verticale vers le bas -->
  <line x1="440" y1="315" x2="440" y2="350" stroke="#1B254B" stroke-width="2.5" marker-end="url(#arrow-blue)"/>

  <!-- Boîte Inférieure : Dans quel but ? -->
  <g filter="url(#shadow)">
    <rect x="140" y="355" width="600" height="65" rx="8" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
    <rect x="140" y="355" width="600" height="24" rx="8" fill="#1B254B"/>
    <text x="440" y="372" font-family="Arial, sans-serif" font-size="12" font-weight="bold" fill="#FFFFFF" text-anchor="middle">
      Dans quel but le système existe-t-il ?
    </text>
    <text x="440" y="398" font-family="Arial, sans-serif" font-size="13" font-weight="bold" fill="#A60038" text-anchor="middle">
      Assurer la circulation forcée du liquide afin d'évacuer les calories du moteur thermique
    </text>
  </g>

  <!-- Bandeau inférieur : Validation du besoin & Phrases autocorrectives -->
  <rect x="40" y="435" width="800" height="48" rx="6" fill="#FDF8F9" stroke="#A60038" stroke-dasharray="4,4"/>
  <text x="55" y="455" font-family="Arial, sans-serif" font-size="11" font-weight="bold" fill="#A60038">
    VALIDATION DU BESOIN (PHRASES AUTOCORRECTIVES) :
  </text>
  <text x="55" y="472" font-family="Arial, sans-serif" font-size="10.5" fill="#1E293B">
    • Pourquoi ce besoin existe-t-il ? Garantir le maintien en température optimale du moteur • Qu'est-ce qui ferait disparaître le besoin ? Motorisation 100% électrique • Besoin validé : OUI
  </text>
</svg>
"""
    save_svg("bete_a_cornes.svg", svg)

# ==============================================================================
# 2. CYCLE DE VIE (Phases et Sous-phases du profil de vie)
# ==============================================================================
def make_cycle_de_vie():
    svg = """<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 920 480" width="920" height="480">
  <defs>
    <filter id="shadow2" x="-5%" y="-5%" width="110%" height="115%">
      <feDropShadow dx="1" dy="2" stdDeviation="2.5" flood-color="#1B254B" flood-opacity="0.12"/>
    </filter>
    <marker id="arrow-phase" viewBox="0 0 10 10" refX="6" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="#A60038" />
    </marker>
  </defs>

  <rect width="920" height="480" rx="12" fill="#F8FAFC" stroke="#E2E8F0" stroke-width="1.5"/>

  <!-- Titre -->
  <rect x="20" y="14" width="880" height="34" rx="6" fill="#1B254B"/>
  <text x="460" y="37" font-family="Arial, Segoe UI, sans-serif" font-size="15" font-weight="bold" fill="#FFFFFF" text-anchor="middle">
    PROFIL DE VIE DU SYSTÈME MÉCANIQUE — INVENTAIRE DES PHASES &amp; SOUS-PHASES
  </text>

  <!-- Ligne horizontale de déroulement chronologique -->
  <line x1="80" y1="80" x2="840" y2="80" stroke="#CBD5E1" stroke-width="4"/>
  <circle cx="110" cy="80" r="10" fill="#1B254B"/>
  <circle cx="280" cy="80" r="10" fill="#1B254B"/>
  <circle cx="450" cy="80" r="10" fill="#1B254B"/>
  <circle cx="630" cy="80" r="10" fill="#A60038"/>
  <circle cx="810" cy="80" r="10" fill="#64748B"/>

  <!-- Labels chronologiques au-dessus des points -->
  <text x="110" y="65" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">1. Conception</text>
  <text x="280" y="65" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">2. Distribution</text>
  <text x="450" y="65" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">3. Intégration</text>
  <text x="630" y="65" font-family="Arial" font-size="11" font-weight="bold" fill="#A60038" text-anchor="middle">4. Exploitation</text>
  <text x="810" y="65" font-family="Arial" font-size="11" font-weight="bold" fill="#64748B" text-anchor="middle">5. Fin de vie</text>

  <!-- 5 Cartes de phases -->
  <!-- Phase 1 : Concrétisation -->
  <g filter="url(#shadow2)">
    <rect x="25" y="105" width="165" height="295" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="1.5"/>
    <rect x="25" y="105" width="165" height="30" rx="6" fill="#1B254B"/>
    <text x="107" y="125" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF" text-anchor="middle">1. CONCRÉTISATION</text>
    
    <rect x="35" y="145" width="145" height="42" rx="4" fill="#F1F5F9"/>
    <text x="42" y="161" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B">Définition (BE)</text>
    <text x="42" y="177" font-family="Arial" font-size="9" fill="#64748B">CAO, calculs, proto ABS</text>

    <rect x="35" y="195" width="145" height="42" rx="4" fill="#F1F5F9"/>
    <text x="42" y="211" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B">Industrialisation</text>
    <text x="42" y="227" font-family="Arial" font-size="9" fill="#64748B">Méthodes, CFAO, outillage</text>

    <rect x="35" y="245" width="145" height="60" rx="4" fill="#F1F5F9"/>
    <text x="42" y="261" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B">Fabrication</text>
    <text x="42" y="277" font-family="Arial" font-size="9" fill="#64748B">Fonderie, usinage usine,</text>
    <text x="42" y="291" font-family="Arial" font-size="9" fill="#64748B">assemblage robotisé</text>

    <rect x="35" y="340" width="145" height="22" rx="3" fill="#E2E8F0"/>
    <text x="107" y="355" font-family="Arial" font-size="9.5" font-weight="bold" fill="#475569" text-anchor="middle">H.U. (Hors Utilisation)</text>
  </g>

  <!-- Phase 2 : Distribution -->
  <g filter="url(#shadow2)">
    <rect x="200" y="105" width="165" height="295" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="1.5"/>
    <rect x="200" y="105" width="165" height="30" rx="6" fill="#1B254B"/>
    <text x="282" y="125" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF" text-anchor="middle">2. DISTRIBUTION</text>

    <rect x="210" y="145" width="145" height="42" rx="4" fill="#F1F5F9"/>
    <text x="217" y="161" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B">Stockage</text>
    <text x="217" y="177" font-family="Arial" font-size="9" fill="#64748B">Palettisation, conservation</text>

    <rect x="210" y="195" width="145" height="42" rx="4" fill="#F1F5F9"/>
    <text x="217" y="211" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B">Transport</text>
    <text x="217" y="227" font-family="Arial" font-size="9" fill="#64748B">Vibrations, chocs routiers</text>

    <rect x="210" y="245" width="145" height="60" rx="4" fill="#F1F5F9"/>
    <text x="217" y="261" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B">Commercialisation</text>
    <text x="217" y="277" font-family="Arial" font-size="9" fill="#64748B">1ère monte (constructeur)</text>
    <text x="217" y="291" font-family="Arial" font-size="9" fill="#64748B">2ème monte (rechange)</text>

    <rect x="210" y="340" width="145" height="22" rx="3" fill="#E2E8F0"/>
    <text x="282" y="355" font-family="Arial" font-size="9.5" font-weight="bold" fill="#475569" text-anchor="middle">H.U. (Hors Utilisation)</text>
  </g>

  <!-- Phase 3 : Intégration -->
  <g filter="url(#shadow2)">
    <rect x="375" y="105" width="165" height="295" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="1.5"/>
    <rect x="375" y="105" width="165" height="30" rx="6" fill="#1B254B"/>
    <text x="457" y="125" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF" text-anchor="middle">3. INTÉGRATION</text>

    <rect x="385" y="145" width="145" height="55" rx="4" fill="#F1F5F9"/>
    <text x="392" y="163" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B">Montage sur moteur</text>
    <text x="392" y="179" font-family="Arial" font-size="9" fill="#64748B">Fixation sur carter-cylindre</text>
    <text x="392" y="191" font-family="Arial" font-size="9" fill="#64748B">Accostage joint d'étanchéité</text>

    <rect x="385" y="210" width="145" height="50" rx="4" fill="#F1F5F9"/>
    <text x="392" y="228" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B">Raccordements</text>
    <text x="392" y="244" font-family="Arial" font-size="9" fill="#64748B">Tension courroie, durites</text>

    <rect x="385" y="340" width="145" height="22" rx="3" fill="#E2E8F0"/>
    <text x="457" y="355" font-family="Arial" font-size="9.5" font-weight="bold" fill="#475569" text-anchor="middle">H.U. (Hors Utilisation)</text>
  </g>

  <!-- Phase 4 : Exploitation (Mise en valeur Cnam Red) -->
  <g filter="url(#shadow2)">
    <rect x="550" y="100" width="180" height="305" rx="6" fill="#FFFFFF" stroke="#A60038" stroke-width="2.5"/>
    <rect x="550" y="100" width="180" height="34" rx="6" fill="#A60038"/>
    <text x="640" y="122" font-family="Arial" font-size="12" font-weight="bold" fill="#FFFFFF" text-anchor="middle">4. EXPLOITATION ★</text>

    <rect x="558" y="142" width="164" height="46" rx="4" fill="#FEF2F4"/>
    <text x="566" y="159" font-family="Arial" font-size="10.5" font-weight="bold" fill="#A60038">Utilisation active (U)</text>
    <text x="566" y="174" font-family="Arial" font-size="8.8" fill="#475569">Pompage, 250W, sans bruit/vib</text>

    <rect x="558" y="195" width="164" height="46" rx="4" fill="#FEF2F4"/>
    <text x="566" y="212" font-family="Arial" font-size="10.5" font-weight="bold" fill="#A60038">Utilisation passive (U)</text>
    <text x="566" y="227" font-family="Arial" font-size="8.8" fill="#475569">Véhicule arrêté : étanchéité zéro fuite</text>

    <rect x="558" y="248" width="164" height="52" rx="4" fill="#FEF2F4"/>
    <text x="566" y="265" font-family="Arial" font-size="10.5" font-weight="bold" fill="#A60038">Maintenance (H.U.)</text>
    <text x="566" y="280" font-family="Arial" font-size="8.8" fill="#475569">Diagnostic fuite, garagiste,</text>
    <text x="566" y="293" font-family="Arial" font-size="8.8" fill="#475569">démontabilité, rechange</text>

    <rect x="558" y="340" width="164" height="22" rx="3" fill="#FEE2E2"/>
    <text x="640" y="355" font-family="Arial" font-size="9.5" font-weight="bold" fill="#A60038" text-anchor="middle">Cœur de l'AFB (U + H.U.)</text>
  </g>

  <!-- Phase 5 : Destruction / Recyclage -->
  <g filter="url(#shadow2)">
    <rect x="740" y="105" width="155" height="295" rx="6" fill="#FFFFFF" stroke="#64748B" stroke-width="1.5"/>
    <rect x="740" y="105" width="155" height="30" rx="6" fill="#64748B"/>
    <text x="817" y="125" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF" text-anchor="middle">5. FIN DE VIE</text>

    <rect x="748" y="145" width="139" height="42" rx="4" fill="#F1F5F9"/>
    <text x="755" y="161" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B">Démontage moteur</text>
    <text x="755" y="177" font-family="Arial" font-size="9" fill="#64748B">Désolidarisation bloc</text>

    <rect x="748" y="195" width="139" height="42" rx="4" fill="#F1F5F9"/>
    <text x="755" y="211" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B">Désassemblage</text>
    <text x="755" y="227" font-family="Arial" font-size="9" fill="#64748B">Séparation corps / roulement</text>

    <rect x="748" y="245" width="139" height="50" rx="4" fill="#F1F5F9"/>
    <text x="755" y="261" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B">Recyclage</text>
    <text x="755" y="277" font-family="Arial" font-size="9" fill="#64748B">Tri matière alu/fonte, filières</text>

    <rect x="748" y="340" width="139" height="22" rx="3" fill="#E2E8F0"/>
    <text x="817" y="355" font-family="Arial" font-size="9.5" font-weight="bold" fill="#475569" text-anchor="middle">H.U. (Hors Utilisation)</text>
  </g>

  <!-- Pied de page pédagogique -->
  <rect x="25" y="420" width="870" height="44" rx="6" fill="#FDF8F9" stroke="#A60038" stroke-width="1"/>
  <text x="40" y="440" font-family="Arial" font-size="11" font-weight="bold" fill="#A60038">RÈGLE MÉTHODOLOGIQUE CNAM :</text>
  <text x="40" y="455" font-family="Arial" font-size="10.5" fill="#1E293B">
    Chaque sous-phase engendre des contraintes spécifiques. Les fonctions de service s'expriment prioritairement en utilisation (U), tandis que la fabrication, le transport et la maintenance imposent des contraintes majeures de conception (H.U.).
  </text>
</svg>
"""
    save_svg("cycle_de_vie.svg", svg)

# ==============================================================================
# 3. RÈGLES FORMELLES DU GRAPHE DES INTERACTEURS
# ==============================================================================
def make_graphe_interacteurs_regles():
    svg = """<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 900 480" width="900" height="480">
  <defs>
    <filter id="shadow3" x="-5%" y="-5%" width="110%" height="115%">
      <feDropShadow dx="1" dy="2" stdDeviation="2.5" flood-color="#1B254B" flood-opacity="0.12"/>
    </filter>
  </defs>

  <rect width="900" height="480" rx="12" fill="#F8FAFC" stroke="#E2E8F0" stroke-width="1.5"/>

  <!-- Titre -->
  <rect x="20" y="14" width="860" height="34" rx="6" fill="#1B254B"/>
  <text x="450" y="37" font-family="Arial, Segoe UI, sans-serif" font-size="15" font-weight="bold" fill="#FFFFFF" text-anchor="middle">
    FORMALISME ET RÈGLES DE CONSTRUCTION DU GRAPHE DES INTERACTEURS (DIAGRAMME PIEUVRE)
  </text>

  <!-- Partie Gauche : Le schéma de principe -->
  <g transform="translate(10, 60)">
    <rect x="15" y="10" width="460" height="380" rx="8" fill="#FFFFFF" stroke="#CBD5E1" stroke-width="1.5"/>
    <text x="245" y="34" font-family="Arial" font-size="12" font-weight="bold" fill="#1B254B" text-anchor="middle">
      SYNTAXE GRAPHIQUE NORMALISÉE (AFNOR / MÉTHODE APTE)
    </text>

    <!-- Système central -->
    <ellipse cx="245" cy="205" rx="75" ry="38" fill="#FEF2F4" stroke="#A60038" stroke-width="2.5"/>
    <text x="245" y="202" font-family="Arial" font-size="14" font-weight="bold" fill="#A60038" text-anchor="middle">SYSTÈME</text>
    <text x="245" y="218" font-family="Arial" font-size="9" fill="#64748B" text-anchor="middle">(Nom neutre, pas de solution)</text>

    <!-- EME 1 et EME 2 (pour FP1) -->
    <ellipse cx="100" cy="95" rx="55" ry="26" fill="#F1F5F9" stroke="#1B254B" stroke-width="1.8"/>
    <text x="100" y="100" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">EME 1 (Source)</text>

    <ellipse cx="390" cy="95" rx="55" ry="26" fill="#F1F5F9" stroke="#1B254B" stroke-width="1.8"/>
    <text x="390" y="100" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">EME 2 (Cible)</text>

    <!-- Fonction Principale FP1 : Ligne courbe traversant le système -->
    <path d="M 125 115 C 170 180 320 180 365 115" fill="none" stroke="#A60038" stroke-width="3"/>
    <rect x="230" y="145" width="30" height="18" rx="3" fill="#A60038"/>
    <text x="245" y="158" font-family="Arial" font-size="10.5" font-weight="bold" fill="#FFFFFF" text-anchor="middle">FP1</text>

    <!-- EME 3 et EME 4 (pour FC1 et FC2) -->
    <ellipse cx="85" cy="315" rx="58" ry="26" fill="#F1F5F9" stroke="#1B254B" stroke-width="1.8"/>
    <text x="85" y="320" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">EME Contrainte</text>

    <ellipse cx="395" cy="315" rx="60" ry="26" fill="#F1F5F9" stroke="#1B254B" stroke-width="1.8"/>
    <text x="395" y="320" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">Référentiel neutre</text>

    <!-- Lignes droites pour FC -->
    <line x1="135" y1="298" x2="190" y2="232" stroke="#1B254B" stroke-width="2.5"/>
    <rect x="150" y="255" width="30" height="18" rx="3" fill="#1B254B"/>
    <text x="165" y="268" font-family="Arial" font-size="10.5" font-weight="bold" fill="#FFFFFF" text-anchor="middle">FC1</text>

    <line x1="350" y1="298" x2="300" y2="232" stroke="#1B254B" stroke-width="2.5"/>
    <rect x="315" y="255" width="30" height="18" rx="3" fill="#1B254B"/>
    <text x="330" y="268" font-family="Arial" font-size="10.5" font-weight="bold" fill="#FFFFFF" text-anchor="middle">FC2</text>

    <text x="245" y="375" font-family="Arial" font-size="11" font-style="italic" fill="#64748B" text-anchor="middle">
      ⇒ Sous-phase : Nom de la sous-phase de vie étudiée ⇐
    </text>
  </g>

  <!-- Partie Droite : Les 4 Règles Fondamentales -->
  <g transform="translate(500, 60)">
    <!-- Règle 1 -->
    <rect x="0" y="10" width="380" height="82" rx="6" fill="#FFFFFF" stroke="#A60038" stroke-width="1.5"/>
    <rect x="0" y="10" width="380" height="22" rx="6" fill="#A60038"/>
    <text x="10" y="26" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF">1. Tracé Courbe vs Droit</text>
    <text x="10" y="47" font-family="Arial" font-size="10" fill="#1E293B">• <tspan font-weight="bold" fill="#A60038">Tracé courbe :</tspan> Fonction de Service (relie 2 EME via le système).</text>
    <text x="10" y="63" font-family="Arial" font-size="10" fill="#1E293B">• <tspan font-weight="bold" fill="#1B254B">Tracé droit :</tspan> Fonction Contrainte (relie 1 EME au système).</text>
    <text x="10" y="79" font-family="Arial" font-size="9.5" fill="#64748B">Aucun terme de la fonction ne doit préjuger d'une solution technique.</text>

    <!-- Règle 2 -->
    <rect x="0" y="105" width="380" height="86" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="1.5"/>
    <rect x="0" y="105" width="380" height="22" rx="6" fill="#1B254B"/>
    <text x="10" y="121" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF">2. EME Génériques Obligatoires</text>
    <text x="10" y="142" font-family="Arial" font-size="10" fill="#1E293B">• <tspan font-weight="bold">Producteur d'énergie (ou puissance) :</tspan> Apport d'énergie externe.</text>
    <text x="10" y="158" font-family="Arial" font-size="10" fill="#1E293B">• <tspan font-weight="bold">Référentiel neutre :</tspan> Nécessaire pour exprimer les fonctions de</text>
    <text x="10" y="174" font-family="Arial" font-size="10" fill="#1E293B">  positionnement, guidage ou reprise d'efforts mécaniques.</text>

    <!-- Règle 3 -->
    <rect x="0" y="205" width="380" height="86" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="1.5"/>
    <rect x="0" y="205" width="380" height="22" rx="6" fill="#1B254B"/>
    <text x="10" y="221" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF">3. EME Bi-États (Entrant / Sortant)</text>
    <text x="10" y="242" font-family="Arial" font-size="10" fill="#1E293B">• Quand une matière d'œuvre change d'état lors de l'action,</text>
    <text x="10" y="258" font-family="Arial" font-size="10" fill="#1E293B">  on distingue <tspan font-weight="bold" fill="#A60038">EME 1a (état initial)</tspan> et <tspan font-weight="bold" fill="#A60038">EME 1b (état final)</tspan>.</text>
    <text x="10" y="274" font-family="Arial" font-size="9.5" fill="#64748B">Exemple : Fluide entrant (basse P) → Fluide sortant (haute P).</text>

    <!-- Règle 4 -->
    <rect x="0" y="305" width="380" height="85" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="1.5"/>
    <rect x="0" y="305" width="380" height="22" rx="6" fill="#1B254B"/>
    <text x="10" y="321" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF">4. Systèmes Autonomes en Énergie</text>
    <text x="10" y="342" font-family="Arial" font-size="10" fill="#1E293B">• Si le système emporte sa propre source (batterie, ressort),</text>
    <text x="10" y="358" font-family="Arial" font-size="10" fill="#1E293B">  le producteur d'énergie est inclus dans la frontière en pointillés</text>
    <text x="10" y="374" font-family="Arial" font-size="9.5" fill="#64748B">pour respecter rigoureusement le formalisme du graphe.</text>
  </g>
</svg>
"""
    save_svg("graphe_interacteurs_regles.svg", svg)

# ==============================================================================
# 4. GRAPHE DES INTERACTEURS DU CORPS DE POMPE MOTEUR F
# ==============================================================================
def make_graphe_interacteurs_pompe():
    svg = """<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 940 560" width="940" height="560">
  <defs>
    <filter id="shadow4" x="-5%" y="-5%" width="110%" height="115%">
      <feDropShadow dx="1" dy="2" stdDeviation="2.5" flood-color="#1B254B" flood-opacity="0.12"/>
    </filter>
  </defs>

  <rect width="940" height="560" rx="12" fill="#F8FAFC" stroke="#E2E8F0" stroke-width="1.5"/>

  <!-- Titre -->
  <rect x="20" y="14" width="900" height="34" rx="6" fill="#1B254B"/>
  <text x="470" y="37" font-family="Arial, Segoe UI, sans-serif" font-size="15" font-weight="bold" fill="#FFFFFF" text-anchor="middle">
    GRAPHE DES INTERACTEURS — CORPS DE POMPE À EAU MOTEUR F (PHASE EXPLOITATION / UTILISATION ACTIVE)
  </text>

  <!-- Système Central -->
  <g filter="url(#shadow4)">
    <ellipse cx="470" cy="275" rx="80" ry="42" fill="#FFFFFF" stroke="#A60038" stroke-width="3"/>
    <text x="470" y="270" font-family="Arial" font-size="14" font-weight="bold" fill="#A60038" text-anchor="middle">Système</text>
    <text x="470" y="288" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B" text-anchor="middle">(Corps de pompe)</text>
  </g>

  <!-- EME Périphériques -->
  <!-- Haut Centre : Poulie / Courroie -->
  <ellipse cx="470" cy="90" rx="68" ry="28" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
  <text x="470" y="94" font-family="Arial" font-size="11.5" font-weight="bold" fill="#1B254B" text-anchor="middle">Poulie / Courroie</text>

  <!-- Haut Droite : Producteur d'énergie -->
  <ellipse cx="680" cy="115" rx="72" ry="28" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
  <text x="680" y="114" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">Producteur</text>
  <text x="680" y="128" font-family="Arial" font-size="10" fill="#64748B" text-anchor="middle">d'énergie</text>

  <!-- Haut Gauche : Référentiel fixe -->
  <ellipse cx="260" cy="115" rx="68" ry="28" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
  <text x="260" y="119" font-family="Arial" font-size="11.5" font-weight="bold" fill="#1B254B" text-anchor="middle">Référentiel</text>

  <!-- Gauche Milieu : Carter-cylindre -->
  <ellipse cx="140" cy="235" rx="72" ry="28" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
  <text x="140" y="234" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">Carter-cylindre</text>
  <text x="140" y="248" font-family="Arial" font-size="9" fill="#64748B" text-anchor="middle">(Bloc moteur)</text>

  <!-- Gauche Bas : Environnement sous capot -->
  <ellipse cx="190" cy="390" rx="75" ry="28" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
  <text x="190" y="394" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">Environnement</text>

  <!-- Bas Centre : Fluide sortant -->
  <ellipse cx="470" cy="460" rx="70" ry="28" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
  <text x="470" y="458" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">Fluide sortant</text>
  <text x="470" y="472" font-family="Arial" font-size="9" fill="#64748B" text-anchor="middle">(Liquide sous pression)</text>

  <!-- Droite Bas : Fluide entrant -->
  <ellipse cx="760" cy="385" rx="70" ry="28" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
  <text x="760" y="383" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">Fluide entrant</text>
  <text x="760" y="397" font-family="Arial" font-size="9" fill="#64748B" text-anchor="middle">(Liquide basse pression)</text>

  <!-- Droite Haut/Milieu : Milieu ambiant -->
  <ellipse cx="800" cy="225" rx="68" ry="28" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
  <text x="800" y="224" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">Milieu ambiant</text>
  <text x="800" y="238" font-family="Arial" font-size="9" fill="#64748B" text-anchor="middle">(Air, chaud, poussière)</text>

  <!-- FONCTIONS PRINCIPALES (COURBES - ROUGE CNAM) -->
  <!-- FP1 : Producteur d'énergie -> Fluide entrant (Besoin primaire) -->
  <path d="M 640 135 C 570 210 650 330 710 370" fill="none" stroke="#A60038" stroke-width="3"/>
  <rect x="585" y="235" width="36" height="20" rx="4" fill="#A60038"/>
  <text x="603" y="249" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF" text-anchor="middle">FP1</text>

  <!-- FP2 : Fluide entrant -> Fluide sortant (Besoin secondaire) -->
  <path d="M 700 400 C 620 440 580 435 540 450" fill="none" stroke="#A60038" stroke-width="3"/>
  <rect x="615" y="420" width="36" height="20" rx="4" fill="#A60038"/>
  <text x="633" y="434" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF" text-anchor="middle">FP2</text>

  <!-- FP3 : Poulie/Courroie -> Référentiel (Guidage en rotation) -->
  <path d="M 410 100 C 350 110 330 110 320 115" fill="none" stroke="#A60038" stroke-width="3"/>
  <rect x="345" y="85" width="36" height="20" rx="4" fill="#A60038"/>
  <text x="363" y="99" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF" text-anchor="middle">FP3</text>

  <!-- FONCTIONS CONTRAINTES (DROITES - BLEU CNAM / VERT SOMBRE) -->
  <!-- FC1 : Carter-cylindre vers Système -->
  <line x1="210" y1="245" x2="390" y2="265" stroke="#1B254B" stroke-width="2"/>
  <rect x="290" y="245" width="32" height="18" rx="3" fill="#1B254B"/>
  <text x="306" y="258" font-family="Arial" font-size="10" font-weight="bold" fill="#FFFFFF" text-anchor="middle">FC1</text>

  <!-- FC2 : Poulie vers Système (efforts axiaux/radiaux) -->
  <line x1="470" y1="120" x2="470" y2="230" stroke="#1B254B" stroke-width="2"/>
  <rect x="455" y="165" width="32" height="18" rx="3" fill="#1B254B"/>
  <text x="471" y="178" font-family="Arial" font-size="10" font-weight="bold" fill="#FFFFFF" text-anchor="middle">FC2</text>

  <!-- FC3 : Milieu ambiant vers Système (corrosion, sel) -->
  <line x1="735" y1="235" x2="550" y2="265" stroke="#1B254B" stroke-width="2"/>
  <rect x="635" y="242" width="32" height="18" rx="3" fill="#1B254B"/>
  <text x="651" y="255" font-family="Arial" font-size="10" font-weight="bold" fill="#FFFFFF" text-anchor="middle">FC3</text>

  <!-- FC4 : Environnement vers Système (encombrement sous capot) -->
  <line x1="260" y1="370" x2="400" y2="305" stroke="#1B254B" stroke-width="2"/>
  <rect x="315" y="325" width="32" height="18" rx="3" fill="#1B254B"/>
  <text x="331" y="338" font-family="Arial" font-size="10" font-weight="bold" fill="#FFFFFF" text-anchor="middle">FC4</text>

  <!-- Sous-titre de la phase étudiée -->
  <rect x="320" y="515" width="300" height="28" rx="5" fill="#E2E8F0"/>
  <text x="470" y="534" font-family="Arial" font-size="11" font-weight="bold" fill="#1B254B" text-anchor="middle">
    ⇒ Phase Exploitation : Utilisation active ⇐
  </text>
</svg>
"""
    save_svg("graphe_interacteurs_pompe.svg", svg)

# ==============================================================================
# 5. FAST DE CRÉATIVITÉ - PRINCIPE & DÉCOMPOSITION
# ==============================================================================
def make_fast_creativite_principe():
    svg = """<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 940 500" width="940" height="500">
  <defs>
    <filter id="shadow5" x="-5%" y="-5%" width="110%" height="115%">
      <feDropShadow dx="1" dy="2" stdDeviation="2.5" flood-color="#1B254B" flood-opacity="0.12"/>
    </filter>
    <marker id="arrow-fast" viewBox="0 0 10 10" refX="6" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="#A60038" />
    </marker>
    <marker id="arrow-blue2" viewBox="0 0 10 10" refX="6" refY="5" markerWidth="6" markerHeight="6" orient="auto-start-reverse">
      <path d="M 0 1 L 10 5 L 0 9 z" fill="#1B254B" />
    </marker>
  </defs>

  <rect width="940" height="500" rx="12" fill="#F8FAFC" stroke="#E2E8F0" stroke-width="1.5"/>

  <!-- Titre -->
  <rect x="20" y="14" width="900" height="34" rx="6" fill="#1B254B"/>
  <text x="470" y="37" font-family="Arial, Segoe UI, sans-serif" font-size="15" font-weight="bold" fill="#FFFFFF" text-anchor="middle">
    DIAGRAMME FAST DE CRÉATIVITÉ — PRINCIPES SCIENTIFIQUES &amp; PRINCIPES TECHNOLOGIQUES
  </text>

  <!-- Axes d'interrogation FAST -->
  <g transform="translate(40, 58)">
    <line x1="280" y1="20" x2="160" y2="20" stroke="#A60038" stroke-width="2" marker-end="url(#arrow-fast)"/>
    <text x="220" y="12" font-family="Arial" font-size="10" font-weight="bold" fill="#A60038" text-anchor="middle">POURQUOI ?</text>

    <line x1="380" y1="20" x2="520" y2="20" stroke="#1B254B" stroke-width="2" marker-end="url(#arrow-blue2)"/>
    <text x="450" y="12" font-family="Arial" font-size="10" font-weight="bold" fill="#1B254B" text-anchor="middle">COMMENT ?</text>

    <line x1="330" y1="12" x2="330" y2="35" stroke="#64748B" stroke-width="2"/>
    <text x="330" y="47" font-family="Arial" font-size="9.5" font-weight="bold" fill="#64748B" text-anchor="middle">QUAND ? (Simultanéité)</text>
  </g>

  <!-- Colonne 1 : FONCTION DE SERVICE -->
  <g filter="url(#shadow5)">
    <rect x="40" y="210" width="180" height="80" rx="8" fill="#FFFFFF" stroke="#A60038" stroke-width="2.5"/>
    <rect x="40" y="210" width="180" height="24" rx="8" fill="#A60038"/>
    <text x="130" y="227" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF" text-anchor="middle">FONCTION DE SERVICE</text>
    <text x="130" y="252" font-family="Arial" font-size="12" font-weight="bold" fill="#1B254B" text-anchor="middle">Transmettre puissance</text>
    <text x="130" y="270" font-family="Arial" font-size="11" fill="#64748B" text-anchor="middle">au fluide entrant</text>
  </g>

  <!-- Liens vers Principes Scientifiques -->
  <path d="M 220 235 L 300 135" stroke="#A60038" stroke-width="1.8"/>
  <path d="M 220 250 L 300 250" stroke="#A60038" stroke-width="1.8"/>
  <path d="M 220 265 L 300 375" stroke="#A60038" stroke-width="1.8"/>

  <!-- Colonne 2 : PRINCIPES SCIENTIFIQUES (SCIENCES APPLIQUÉES) -->
  <!-- Branche 1 : Solides indéformables -->
  <g filter="url(#shadow5)">
    <rect x="300" y="95" width="230" height="75" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
    <rect x="300" y="95" width="230" height="22" rx="6" fill="#1B254B"/>
    <text x="415" y="111" font-family="Arial" font-size="10.5" font-weight="bold" fill="#FFFFFF" text-anchor="middle">MÉCANIQUE DES SOLIDES</text>
    <text x="415" y="134" font-family="Arial" font-size="11" font-weight="bold" fill="#1E293B" text-anchor="middle">Solides indéformables (dynamique)</text>
    <text x="415" y="153" font-family="Arial" font-size="9.5" fill="#64748B" text-anchor="middle">Équations de la dynamique (PFD)</text>
  </g>

  <!-- Branche 2 : Mécanique des fluides -->
  <g filter="url(#shadow5)">
    <rect x="300" y="215" width="230" height="75" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
    <rect x="300" y="215" width="230" height="22" rx="6" fill="#1B254B"/>
    <text x="415" y="231" font-family="Arial" font-size="10.5" font-weight="bold" fill="#FFFFFF" text-anchor="middle">MÉCANIQUE DES FLUIDES</text>
    <text x="415" y="254" font-family="Arial" font-size="11" font-weight="bold" fill="#1E293B" text-anchor="middle">Fluides liquides &amp; gazeux</text>
    <text x="415" y="273" font-family="Arial" font-size="9.5" fill="#64748B" text-anchor="middle">Bernoulli, perte de charge, éjecteur</text>
  </g>

  <!-- Branche 3 : Solides déformables -->
  <g filter="url(#shadow5)">
    <rect x="300" y="340" width="230" height="75" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="2"/>
    <rect x="300" y="340" width="230" height="22" rx="6" fill="#1B254B"/>
    <text x="415" y="356" font-family="Arial" font-size="10.5" font-weight="bold" fill="#FFFFFF" text-anchor="middle">MÉCANIQUE DES MILIEUX DÉFORMABLES</text>
    <text x="415" y="379" font-family="Arial" font-size="11" font-weight="bold" fill="#1E293B" text-anchor="middle">Solides déformables (élasticité)</text>
    <text x="415" y="398" font-family="Arial" font-size="9.5" fill="#64748B" text-anchor="middle">Énergie de déformation (MMC)</text>
  </g>

  <!-- Liens vers Principes Technologiques -->
  <path d="M 530 120 L 610 100" stroke="#1B254B" stroke-width="1.5"/>
  <path d="M 530 145 L 610 150" stroke="#1B254B" stroke-width="1.5"/>
  <path d="M 530 240 L 610 230" stroke="#1B254B" stroke-width="1.5"/>
  <path d="M 530 260 L 610 280" stroke="#1B254B" stroke-width="1.5"/>
  <path d="M 530 375 L 610 375" stroke="#1B254B" stroke-width="1.5"/>

  <!-- Colonne 3 : PRINCIPES TECHNOLOGIQUES -->
  <!-- 1a : Pales tournantes (Retenu) -->
  <g filter="url(#shadow5)">
    <rect x="610" y="75" width="280" height="48" rx="24" fill="#FEF2F4" stroke="#A60038" stroke-width="2"/>
    <text x="750" y="96" font-family="Arial" font-size="11.5" font-weight="bold" fill="#A60038" text-anchor="middle">ROUET CENTRIFUGE / PALES ★</text>
    <text x="750" y="112" font-family="Arial" font-size="9.5" fill="#1E293B" text-anchor="middle">(Solution retenue : robuste &amp; compacte)</text>
  </g>

  <!-- 1b : Piston / Vis d'Archimède -->
  <g filter="url(#shadow5)">
    <rect x="610" y="130" width="280" height="44" rx="22" fill="#FFFFFF" stroke="#64748B" stroke-width="1.5"/>
    <text x="750" y="150" font-family="Arial" font-size="11" font-weight="bold" fill="#64748B" text-anchor="middle">Piston volumétrique / Vis axiale</text>
    <text x="750" y="164" font-family="Arial" font-size="9" fill="#94A3B8" text-anchor="middle">(Complexe, encombrement excessif)</text>
  </g>

  <!-- 2a : Éjecteur à émulsion -->
  <g filter="url(#shadow5)">
    <rect x="610" y="210" width="280" height="44" rx="22" fill="#FFFFFF" stroke="#64748B" stroke-width="1.5"/>
    <text x="750" y="230" font-family="Arial" font-size="11" font-weight="bold" fill="#64748B" text-anchor="middle">Pompe à émulsion / Venturi liquide</text>
    <text x="750" y="244" font-family="Arial" font-size="9" fill="#94A3B8" text-anchor="middle">(Rendement insuffisant à basse vitesse)</text>
  </g>

  <!-- 2b : Souffleur d'air -->
  <g filter="url(#shadow5)">
    <rect x="610" y="260" width="280" height="44" rx="22" fill="#FFFFFF" stroke="#64748B" stroke-width="1.5"/>
    <text x="750" y="280" font-family="Arial" font-size="11" font-weight="bold" fill="#64748B" text-anchor="middle">Souffleur / Compresseur d'air</text>
    <text x="750" y="294" font-family="Arial" font-size="9" fill="#94A3B8" text-anchor="middle">(Incompatible fluide liquide monophasique)</text>
  </g>

  <!-- 3 : Membrane élastique -->
  <g filter="url(#shadow5)">
    <rect x="610" y="355" width="280" height="44" rx="22" fill="#FFFFFF" stroke="#64748B" stroke-width="1.5"/>
    <text x="750" y="375" font-family="Arial" font-size="11" font-weight="bold" fill="#64748B" text-anchor="middle">Membrane élastique pulsatile</text>
    <text x="750" y="389" font-family="Arial" font-size="9" fill="#94A3B8" text-anchor="middle">(Débit pulsé, fatigue mécanique prématurée)</text>
  </g>

  <!-- Bandeau inférieur récapitulatif -->
  <rect x="40" y="435" width="860" height="46" rx="6" fill="#FDF8F9" stroke="#A60038" stroke-width="1"/>
  <text x="55" y="454" font-family="Arial" font-size="11" font-weight="bold" fill="#A60038">MÉTHODOLOGIE FAST DE CRÉATIVITÉ (APTE / Cnam) :</text>
  <text x="55" y="470" font-family="Arial" font-size="10" fill="#1E293B">
    Permet d'ouvrir le champ des solutions sans a priori en explorant tous les domaines de la physique (PFD, Bernoulli, MMC, magnétisme), puis de sélectionner le principe technologique le plus efficient face aux critères du CdCF.
  </text>
</svg>
"""
    save_svg("fast_creativite_principe.svg", svg)

# ==============================================================================
# 6. FAST APPLIQUÉ AUX 3 FONCTIONS CLÉS DU CORPS DE POMPE MOTEUR F
# ==============================================================================
def make_fast_pompe_application():
    svg = """<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 960 520" width="960" height="520">
  <defs>
    <filter id="shadow6" x="-5%" y="-5%" width="110%" height="115%">
      <feDropShadow dx="1" dy="2" stdDeviation="2.5" flood-color="#1B254B" flood-opacity="0.12"/>
    </filter>
  </defs>

  <rect width="960" height="520" rx="12" fill="#F8FAFC" stroke="#E2E8F0" stroke-width="1.5"/>

  <!-- Titre -->
  <rect x="20" y="14" width="920" height="34" rx="6" fill="#1B254B"/>
  <text x="480" y="37" font-family="Arial, Segoe UI, sans-serif" font-size="15" font-weight="bold" fill="#FFFFFF" text-anchor="middle">
    FAST DE CRÉATIVITÉ MULTI-FONCTIONS — CORPS DE POMPE À EAU MOTEUR F
  </text>

  <!-- 3 Rangées pour les 3 fonctions clés -->
  <!-- RANGÉE 1 : FP1 Transmettre puissance -->
  <g transform="translate(25, 65)">
    <!-- Fonction -->
    <rect x="10" y="15" width="220" height="70" rx="6" fill="#FFFFFF" stroke="#A60038" stroke-width="2"/>
    <text x="120" y="38" font-family="Arial" font-size="11" font-weight="bold" fill="#A60038" text-anchor="middle">FP1 : Transmettre puissance</text>
    <text x="120" y="55" font-family="Arial" font-size="10.5" fill="#1B254B" text-anchor="middle">du producteur d'énergie</text>
    <text x="120" y="70" font-family="Arial" font-size="10.5" fill="#1B254B" text-anchor="middle">au fluide entrant (250 W)</text>

    <!-- Principes Scientifiques explorés -->
    <line x1="230" y1="50" x2="280" y2="50" stroke="#A60038" stroke-width="1.5"/>
    <rect x="280" y="15" width="290" height="70" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="1.5"/>
    <text x="425" y="35" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B" text-anchor="middle">Mécanique classique / Dynamique</text>
    <text x="425" y="52" font-family="Arial" font-size="9.5" fill="#475569" text-anchor="middle">• Solide rigide mobile (PFD)</text>
    <text x="425" y="68" font-family="Arial" font-size="9" fill="#64748B" text-anchor="middle">• Fluide / Piston / Souffleur (écartés)</text>

    <!-- Solution Technologique Retenue -->
    <line x1="570" y1="50" x2="620" y2="50" stroke="#1B254B" stroke-width="1.5"/>
    <rect x="620" y="18" width="280" height="64" rx="32" fill="#FEF2F4" stroke="#A60038" stroke-width="2"/>
    <text x="760" y="44" font-family="Arial" font-size="12" font-weight="bold" fill="#A60038" text-anchor="middle">ROUET CENTRIFUGE À PALES</text>
    <text x="760" y="62" font-family="Arial" font-size="9.5" fill="#1B254B" text-anchor="middle">Rotor monté sur axe entraîné par courroie</text>
  </g>

  <!-- RANGÉE 2 : FP2 Transformer fluide entrant en fluide sortant -->
  <g transform="translate(25, 185)">
    <!-- Fonction -->
    <rect x="10" y="15" width="220" height="70" rx="6" fill="#FFFFFF" stroke="#A60038" stroke-width="2"/>
    <text x="120" y="38" font-family="Arial" font-size="11" font-weight="bold" fill="#A60038" text-anchor="middle">FP2 : Transformer</text>
    <text x="120" y="55" font-family="Arial" font-size="10.5" fill="#1B254B" text-anchor="middle">le fluide entrant en fluide</text>
    <text x="120" y="70" font-family="Arial" font-size="10.5" fill="#1B254B" text-anchor="middle">sortant (accélération &amp; pression)</text>

    <!-- Principes Scientifiques -->
    <line x1="230" y1="50" x2="280" y2="50" stroke="#A60038" stroke-width="1.5"/>
    <rect x="280" y="15" width="290" height="70" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="1.5"/>
    <text x="425" y="35" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B" text-anchor="middle">Mécanique classique / Statique</text>
    <text x="425" y="52" font-family="Arial" font-size="9.5" fill="#475569" text-anchor="middle">• Solides indéformables fixes (PFS)</text>
    <text x="425" y="68" font-family="Arial" font-size="9" fill="#64748B" text-anchor="middle">• Guidage hydrodynamique interne</text>

    <!-- Solution Retenue -->
    <line x1="570" y1="50" x2="620" y2="50" stroke="#1B254B" stroke-width="1.5"/>
    <rect x="620" y="18" width="280" height="64" rx="32" fill="#FEF2F4" stroke="#A60038" stroke-width="2"/>
    <text x="760" y="44" font-family="Arial" font-size="12" font-weight="bold" fill="#A60038" text-anchor="middle">VOLUTE SPIRALE &amp; CANAL DE SORTIE</text>
    <text x="760" y="62" font-family="Arial" font-size="9.5" fill="#1B254B" text-anchor="middle">Intégrée dans le corps coulé alu/fonte</text>
  </g>

  <!-- RANGÉE 3 : FP3 Guider la poulie dans le référentiel -->
  <g transform="translate(25, 305)">
    <!-- Fonction -->
    <rect x="10" y="15" width="220" height="70" rx="6" fill="#FFFFFF" stroke="#A60038" stroke-width="2"/>
    <text x="120" y="38" font-family="Arial" font-size="11" font-weight="bold" fill="#A60038" text-anchor="middle">FP3 : Guider la poulie</text>
    <text x="120" y="55" font-family="Arial" font-size="10.5" fill="#1B254B" text-anchor="middle">dans le référentiel</text>
    <text x="120" y="70" font-family="Arial" font-size="10.5" fill="#1B254B" text-anchor="middle">(Reprise d'efforts courroie)</text>

    <!-- Principes Scientifiques -->
    <line x1="230" y1="50" x2="280" y2="50" stroke="#A60038" stroke-width="1.5"/>
    <rect x="280" y="15" width="290" height="70" rx="6" fill="#FFFFFF" stroke="#1B254B" stroke-width="1.5"/>
    <text x="425" y="35" font-family="Arial" font-size="10.5" font-weight="bold" fill="#1B254B" text-anchor="middle">Guidage en rotation mécanique</text>
    <text x="425" y="52" font-family="Arial" font-size="9.5" fill="#475569" text-anchor="middle">• Contact solide / roulement étanche</text>
    <text x="425" y="68" font-family="Arial" font-size="9" fill="#64748B" text-anchor="middle">• Paliers hydrostatiques / magnétiques (innovations)</text>

    <!-- Solution Retenue -->
    <line x1="570" y1="50" x2="620" y2="50" stroke="#1B254B" stroke-width="1.5"/>
    <rect x="620" y="18" width="280" height="64" rx="32" fill="#FEF2F4" stroke="#A60038" stroke-width="2"/>
    <text x="760" y="44" font-family="Arial" font-size="12" font-weight="bold" fill="#A60038" text-anchor="middle">ROULEMENT DOUBLE INTÉGRÉ</text>
    <text x="760" y="62" font-family="Arial" font-size="9.5" fill="#1B254B" text-anchor="middle">Avec joint cyclam d'étanchéité dynamique</text>
  </g>

  <!-- Bandeau Synthèse -->
  <rect x="35" y="440" width="890" height="50" rx="6" fill="#1B254B"/>
  <text x="50" y="462" font-family="Arial" font-size="11" font-weight="bold" fill="#FFFFFF">CONSTAT SUR LE PRODUIT ABOUTI :</text>
  <text x="50" y="478" font-family="Arial" font-size="10.5" fill="#E2E8F0">
    La solution schématique comprend 2 composants fonctionnels (rotor + carter). La solution industrielle en comporte 4 à cause des contraintes de fabrication (nervures, pattes), d'assemblage (scission du corps) et de maintenance (vis, joint, détection de fuite).
  </text>
</svg>
"""
    save_svg("fast_pompe_application.svg", svg)

if __name__ == "__main__":
    make_bete_a_cornes()
    make_cycle_de_vie()
    make_graphe_interacteurs_regles()
    make_graphe_interacteurs_pompe()
    make_fast_creativite_principe()
    make_fast_pompe_application()
    print("Tous les schémas vectoriels SVG ont été générés avec succès.")
