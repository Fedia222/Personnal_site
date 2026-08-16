// ============================================================
// CV — FEDOR SAVINOV
// Data Science & Développement Digital
// ============================================================


// ------------------------------------------------------------
// COLORS
// ------------------------------------------------------------

#let blue = rgb("#1D4ED8")
#let dark = rgb("#111827")
#let muted = rgb("#4B5563")
#let very-muted = rgb("#6B7280")
#let light = rgb("#F8FAFC")


// ------------------------------------------------------------
// PAGE
// ------------------------------------------------------------

#set page(
  paper: "a4",
  margin: (
    left: 1.28cm,
    right: 1.28cm,
    top: 1.15cm,
    bottom: 1.10cm,
  ),
)

#set text(
  font: "Arial",
  size: 10.1pt,
  fill: dark,
)

#set par(
  leading: 0.76em,
  spacing: 0pt,
)

#set list(
  marker: "•",
  indent: 1.05em,
  body-indent: 0.48em,
  spacing: 2.6pt,
)


// ============================================================
// HELPERS
// ============================================================


// ------------------------------------------------------------
// SECTION TITLE
// ------------------------------------------------------------

#let section(title) = {

  // Gros espace AVANT le titre
  v(11pt, weak: false)

  text(
    size: 12.2pt,
    weight: "bold",
    fill: blue,
  )[
    #title
  ]

  // Séparation titre -> ligne
  v(3.2pt, weak: false)

  line(
    length: 100%,
    stroke: 0.75pt + blue,
  )

  // Séparation ligne -> contenu
  v(7pt, weak: false)
}


// ------------------------------------------------------------
// EDUCATION
// ------------------------------------------------------------

#let education(
  institution,
  degree,
  date,
  courses: none,
) = {

  grid(
    columns: (1fr, auto),
    column-gutter: 14pt,

    [
      #text(
        size: 10.2pt,
        weight: "bold",
      )[
        #institution
      ]
    ],

    align(right)[
      #text(
        size: 9.2pt,
        fill: muted,
      )[
        #date
      ]
    ],
  )

  // Institution -> diplôme
  v(2.8pt, weak: false)

  text(
    size: 9.8pt,
    weight: "semibold",
  )[
    #degree
  ]

  if courses != none {

    // Diplôme -> cours
    v(3.5pt, weak: false)

    text(
      size: 9.15pt,
      fill: muted,
    )[
      #courses
    ]
  }

  // Espace entre les formations
  v(8pt, weak: false)
}


// ------------------------------------------------------------
// EXPERIENCE
// ------------------------------------------------------------

#let experience(
  role,
  company,
  date,
  body,
) = {

  // 3 colonnes :
  // Poste | Entreprise | Date
  //
  // Ça empêche l'entreprise de passer sur la ligne suivante.

  grid(
    columns: (auto, 1fr, auto),
    column-gutter: 7pt,

    [
      #text(
        size: 10.2pt,
        weight: "bold",
      )[
        #role
      ]
    ],

    [
      #text(
        size: 9.9pt,
        fill: muted,
      )[
        · #company
      ]
    ],

    align(right)[
      #text(
        size: 9.15pt,
        fill: muted,
      )[
        #date
      ]
    ],
  )

  // Header expérience -> bullets
  v(4pt, weak: false)

  body

  // Vrai espace entre deux expériences
  v(8pt, weak: false)
}


// ------------------------------------------------------------
// SKILL BLOCK
// ------------------------------------------------------------

#let skill-block(title, body) = {

  text(
    size: 10pt,
    weight: "bold",
    fill: dark,
  )[
    #title
  ]

  // Sous-titre -> contenu
  v(3.2pt, weak: false)

  text(
    size: 9.35pt,
    fill: muted,
  )[
    #body
  ]
}


// ------------------------------------------------------------
// PROJECT
// ------------------------------------------------------------

#let project(
  title,
  technologies,
  body,
) = {

  text(
    size: 10.1pt,
    weight: "bold",
  )[
    #title
  ]

  // Titre -> technologies
  v(2.4pt, weak: false)

  text(
    size: 8.9pt,
    fill: very-muted,
  )[
    #technologies
  ]

  // Technologies -> description
  v(3pt, weak: false)

  body

  // Entre deux projets
  v(8pt, weak: false)
}


// ============================================================
// HEADER
// ============================================================

#grid(
  columns: (1fr, 5.4cm),
  column-gutter: 1cm,

  // ----------------------------------------------------------
  // LEFT — NAME / PROFILE
  // ----------------------------------------------------------
  [
    #text(
      size: 24pt,
      weight: "bold",
      fill: dark,
    )[
      Fedor Savinov
    ]

    #v(7pt, weak: false)

    #text(
      size: 10.8pt,
      weight: "semibold",
      fill: muted,
    )[
      Mathématiques appliquées · Data Science
    ]

    #v(4.5pt, weak: false)

    #text(
      size: 9.5pt,
      fill: very-muted,
    )[
      Année de césure 2026–2027
    ]
  ],

  // ----------------------------------------------------------
  // RIGHT — CONTACT
  // ----------------------------------------------------------
  align(right + top)[

    #text(
      size: 9pt,
      fill: muted,
    )[
      Paris, France
    ]

    #v(3.5pt, weak: false)

    #text(
      size: 9pt,
      fill: muted,
    )[
      +33 7 83 21 02 38
    ]

    #v(3.5pt, weak: false)

    #text(
      size: 9pt,
      fill: muted,
    )[
      #link("mailto:fedormistral@gmail.com")[
        fedormistral\@gmail.com
      ]
    ]

    #v(3.5pt, weak: false)

    #text(
      size: 9pt,
      fill: muted,
    )[
      #link("https://fedorsavinov.com")[
        fedorsavinov.com
      ]
    ]

    #v(3.5pt, weak: false)

    #text(
      size: 9pt,
      fill: muted,
    )[
      #link("https://github.com/Fedia222")[
        github.com/Fedia222
      ]
    ]
  ],
)


// ------------------------------------------------------------
// SEPARATION AFTER HEADER
// ------------------------------------------------------------

#v(9pt, weak: false)

#line(
  length: 100%,
  stroke: 0.65pt + blue,
)

#v(10pt, weak: false)

// ============================================================
// PRESENTATION
// ============================================================

// Header -> présentation
#v(12pt, weak: false)

#rect(
  width: 100%,
  fill: light,
  radius: 3pt,

  inset: (
    x: 11pt,
    y: 9pt,
  ),
)[
  #text(
    size: 9.6pt,
    fill: muted,
  )[
    Étudiant en mathématiques appliquées spécialisé en data science,
    actuellement en année de césure, je développe des projets combinant
    analyse de données, machine learning et développement d'applications
    digitales. Je m'intéresse particulièrement à la conception d'outils
    data de bout en bout, de la structuration et l'analyse des données
    jusqu'à la restitution d'insights exploitables par les équipes métiers.
  ]
]


// ============================================================
// FORMATION
// ============================================================

#section("Formation")

#education(
  "Sorbonne Université – Faculté des Sciences et Ingénierie",
  "Master 1 Mathématiques Appliquées – parcours Science des Données Avancée",
  "2025 – 2026",

  courses: [
    Probabilités approfondies ·
    Statistique computationnelle et Machine Learning ·
    Statistique avancée en grande dimension ·
    Bases de l'analyse de données ·
    Optimisation ·
    Analyse fonctionnelle ·
    C++
  ],
)

#education(
  "Sorbonne Université – Faculté des Sciences et Ingénierie",
  "Double Licence Mathématiques & Physique",
  "2022 – 2025",
)


// ============================================================
// EXPERIENCE
// ============================================================

#section("Expérience Professionnelle")

#experience(
  "Fondateur",
  "Wots AI",
  "Mai 2025 – Présent",
  [
    - Conception de solutions digitales combinant traitement de données, automatisation et intelligence artificielle.
    - Développement de prototypes web en HTML, CSS et JavaScript et structuration des flux de données nécessaires aux applications.
    - Pilotage de projets de bout en bout : analyse des besoins métiers, définition des fonctionnalités, développement, validation et suivi d'indicateurs.
  ],
)

#experience(
  "Data Analyst Freelance",
  "Indépendant",
  "Mai 2025 – Sept. 2025",
  [
    - Nettoyage, transformation et analyse exploratoire de données avec Python.
    - Modélisation statistique, automatisation d'analyses et restitution de recommandations quantitatives.
  ],
)

#experience(
  "Chef de Projet",
  "AntexCloud",
  "Sept. 2022 – Nov. 2024",
  [
    - Coordination d'une équipe de 6 à 10 personnes sur des projets digitaux.
    - Mise en place de tableaux de bord, suivi d'indicateurs et traduction des besoins métiers en fonctionnalités.
  ],
)

#experience(
  "Stagiaire Recherche",
  "Observatoire de Meudon",
  "Été 2023",
  [
    - Développement de simulations numériques N-corps et analyse de données observationnelles.
  ],
)


// ============================================================
// COMPETENCES
// ============================================================

#section("Compétences Techniques")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 27pt,

  // Espace vertical FORCÉ entre les deux lignes
  row-gutter: 13pt,

  [
    #skill-block(
      "Python & Data",
      [
        Python · Pandas · NumPy · Scikit-learn · XGBoost ·
        TensorFlow · Keras · Matplotlib
      ]
    )
  ],

  [
    #skill-block(
      "Développement",
      [
        JavaScript · HTML · CSS · C++ ·
        Interfaces web · Prototypage · Notions UX/UI
      ]
    )
  ],

  [
    #skill-block(
      "Data Science",
      [
        Machine Learning · Deep Learning ·
        Analyse exploratoire · Feature engineering ·
        Modélisation statistique · Validation de modèles
      ]
    )
  ],

  [
    #skill-block(
      "Data & Outils",
      [
        SQL · Pipelines de données · Git · GitHub ·
        Jupyter Notebook · VS Code ·
        Développement assisté par IA
      ]
    )
  ],
)


// ============================================================
// PROJETS
// ============================================================

#section("Projets Sélectionnés")

#project(
  "Analyse prédictive de données médicales",
  "Python · Pandas · NumPy · Scikit-learn · XGBoost",
  [
    - Analyse de facteurs cliniques et de mode de vie associés au risque d'accouchement prématuré.
    - Prétraitement, feature engineering, classification et comparaison des performances par validation croisée.
  ],
)

#project(
  "Prévision de séries financières",
  "Python · Pandas · Scikit-learn · Matplotlib · C++",
  [
    - Modèles de régression sur séries temporelles financières, ingénierie de variables et analyse des performances.
  ],
)


// ============================================================
// INFORMATIONS COMPLEMENTAIRES
// ============================================================

#section("Informations Complémentaires")

#grid(
  // Plus large qu'avant pour éviter
  // "Vie associative" sur 2 lignes
  columns: (3.35cm, 1fr),

  column-gutter: 10pt,
  row-gutter: 5pt,

  [
    #text(weight: "bold")[Langues]
  ],
  [
    Français courant · Anglais courant · Russe langue maternelle
  ],

  [
    #text(weight: "bold")[Vie associative]
  ],
  [
    Organisation d'événements universitaires de grande envergure
  ],

  [
    #text(weight: "bold")[Sports]
  ],
  [
    Jiu-Jitsu Brésilien · Volleyball · Échecs · tout en compétition
  ],
)