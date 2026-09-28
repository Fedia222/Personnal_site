// ============================================================
// CV — FEDOR SAVINOV
// Data Science & Digital Development
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

  // Large space BEFORE the title
  v(11pt, weak: false)

  text(
    size: 12.2pt,
    weight: "bold",
    fill: blue,
  )[
    #title
  ]

  // Space between title and line
  v(3.2pt, weak: false)

  line(
    length: 100%,
    stroke: 0.75pt + blue,
  )

  // Space between line and content
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

  // Institution -> degree
  v(2.8pt, weak: false)

  text(
    size: 9.8pt,
    weight: "semibold",
  )[
    #degree
  ]

  if courses != none {

    // Degree -> coursework
    v(3.5pt, weak: false)

    text(
      size: 9.15pt,
      fill: muted,
    )[
      #courses
    ]
  }

  // Space between education entries
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

  // 3 columns:
  // Position | Company | Date
  //
  // Prevents the company name from wrapping to a new line.

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

  // Experience header -> bullets
  v(4pt, weak: false)

  body

  // Space between experience entries
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

  // Subtitle -> content
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

  // Title -> technologies
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

  // Space between projects
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
      Applied Mathematics · Data Science
    ]

    #v(4.5pt, weak: false)

    #text(
      size: 9.5pt,
      fill: very-muted,
    )[
      Gap Year 2026–2027
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
// PROFILE
// ============================================================

// Header -> profile
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
    Applied Mathematics student specializing in Data Science, currently
    completing a gap year. I develop projects combining data analysis,
    machine learning, and digital application development. I am particularly
    interested in building end-to-end data solutions, from data structuring
    and analysis to delivering actionable insights for business teams.
  ]
]


// ============================================================
// EDUCATION
// ============================================================

#section("Education")

#education(
  "Sorbonne University – Faculty of Science and Engineering",
  "Master 1 in Applied Mathematics – Advanced Data Science Track",
  "2025 – 2026",

  courses: [
    Advanced Probability ·
    Computational Statistics and Machine Learning ·
    Advanced High-Dimensional Statistics ·
    Foundations of Data Analysis ·
    Optimization ·
    Functional Analysis ·
    C++
  ],
)

#education(
  "Sorbonne University – Faculty of Science and Engineering",
  "Dual Bachelor's Degree in Mathematics & Physics",
  "2022 – 2025",
)


// ============================================================
// PROFESSIONAL EXPERIENCE
// ============================================================

#section("Professional Experience")

#experience(
  "Founder",
  "Wots AI",
  "May 2025 – Present",
  [
    - Designed digital solutions combining data processing, automation, and artificial intelligence.
    - Developed web prototypes in HTML, CSS, and JavaScript and structured the data flows required by applications.
    - Managed projects end-to-end, from business needs analysis and feature definition to development, validation, and KPI monitoring.
  ],
)

#experience(
  "Freelance Data Analyst",
  "Independent",
  "May 2025 – Sept. 2025",
  [
    - Cleaned, transformed, and performed exploratory analysis on datasets using Python.
    - Developed statistical models, automated analytical workflows, and delivered quantitative recommendations.
  ],
)

#experience(
  "Project Manager",
  "AntexCloud",
  "Sept. 2022 – Nov. 2024",
  [
    - Coordinated a team of 6 to 10 people across digital projects.
    - Built dashboards, monitored key indicators, and translated business requirements into product features.
  ],
)

#experience(
  "Research Intern",
  "Meudon Observatory",
  "Summer 2023",
  [
    - Developed numerical N-body simulations and analyzed observational data.
  ],
)


// ============================================================
// TECHNICAL SKILLS
// ============================================================

#section("Technical Skills")

#grid(
  columns: (1fr, 1fr),
  column-gutter: 27pt,

  // Forced vertical spacing between rows
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
      "Development",
      [
        JavaScript · HTML · CSS · C++ ·
        Web interfaces · Prototyping · UX/UI fundamentals
      ]
    )
  ],

  [
    #skill-block(
      "Data Science",
      [
        Machine Learning · Deep Learning ·
        Exploratory Data Analysis · Feature Engineering ·
        Statistical Modeling · Model Validation
      ]
    )
  ],

  [
    #skill-block(
      "Data & Tools",
      [
        SQL · Data Pipelines · Git · GitHub ·
        Jupyter Notebook · VS Code ·
        AI-Assisted Development
      ]
    )
  ],
)


// ============================================================
// PROJECTS
// ============================================================

#section("Selected Projects")

#project(
  "Predictive Analysis of Medical Data",
  "Python · Pandas · NumPy · Scikit-learn · XGBoost",
  [
    - Analyzed clinical and lifestyle factors associated with the risk of preterm birth.
    - Performed preprocessing, feature engineering, classification, and model comparison using cross-validation.
  ],
)

#project(
  "Financial Time Series Forecasting",
  "Python · Pandas · Scikit-learn · Matplotlib · C++",
  [
    - Developed regression models for financial time series, including feature engineering and performance analysis.
  ],
)


// ============================================================
// ADDITIONAL INFORMATION
// ============================================================

#section("Additional Information")

#grid(
  // Wide enough to prevent labels from wrapping
  columns: (3.35cm, 1fr),

  column-gutter: 10pt,
  row-gutter: 5pt,

  [
    #text(weight: "bold")[Languages]
  ],
  [
    French — Fluent · English — Fluent · Russian — Native
  ],

  [
    #text(weight: "bold")[Student Activities]
  ],
  [
    Organized large-scale university events
  ],

  [
    #text(weight: "bold")[Sports]
  ],
  [
    Brazilian Jiu-Jitsu · Volleyball · Chess · Competitive level
  ],
)