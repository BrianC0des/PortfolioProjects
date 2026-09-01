// Typst Developer Resume / CV (ATS-Compliant, Single Column)
#show heading: set text(fill: rgb("#1a202c"))
#set text(font: "Liberation Sans", size: 9.8pt, fill: rgb("#2d3748"))
#set page(
  paper: "a4",
  margin: (x: 1.6cm, top: 1.6cm, bottom: 1.6cm),
)

// Header layout
#align(center)[
  #text(size: 19pt, weight: "bold", fill: rgb("#0f172a"))[Bryan P. Saavedra] \
  #v(2pt)
  #text(size: 9pt, fill: rgb("#475569"))[
    Zamboanga City, Philippines #h(4pt) | #h(4pt)
    #link("mailto:bryansaavedrab272@gmail.com")[bryansaavedrab272\@gmail.com] #h(4pt) | #h(4pt)
    #link("https://github.com/BrianC0des")[github.com/BrianC0des]
  ]
]

#v(6pt)

// Section Helper
#let section(title) = {
  v(7pt)
  text(size: 11pt, weight: "bold", fill: rgb("#0f172a"))[#upper(title)]
  v(-5pt)
  line(length: 100%, stroke: 0.8pt + rgb("#cbd5e1"))
  v(3pt)
}

// Entry Helper
#let entry(title, right, subtitle, subright, body) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold", fill: rgb("#1e293b"))[#title],
    text(style: "italic", fill: rgb("#475569"))[#right]
  )
  if subtitle != "" or subright != "" {
    v(-3pt)
    grid(
      columns: (1fr, auto),
      text(size: 9pt, style: "italic", fill: rgb("#475569"))[#subtitle],
      text(size: 9pt, fill: rgb("#64748b"))[#subright]
    )
  }
  if body != [] {
    v(2pt)
    text(size: 9.2pt)[#body]
  }
  v(3pt)
}

// --- PROFESSIONAL SUMMARY ---
#section("Professional Summary")
#text(size: 9.2pt)[
  Passionate Aspiring Full-Stack Developer and Computer Science student specializing in responsive web applications, interactive educational tools, and API backend architectures. Proficient in HTML5, CSS3, JavaScript, Node.js, and Express, with strong C++ fundamentals and Python familiarity. Experienced in leveraging autonomous AI coding agents (Google Antigravity, Claude Code) to accelerate software engineering velocity.
]

// --- EDUCATION ---
#section("Education")
#entry(
  "Western Mindanao State University (WMSU)", "2022 – Present",
  "Bachelor of Science in Computer Science (College of Computer Studies)", "Zamboanga City, Philippines",
  []
)

// --- TECHNICAL SKILLS ---
#section("Technical Skills")
#grid(
  columns: (125pt, 1fr),
  row-gutter: 5pt,
  text(weight: "bold", fill: rgb("#1e293b"))[Languages & Frontend:], [HTML5, CSS3, JavaScript (ES6+), C++ (Fundamentals), Python (Familiar)],
  text(weight: "bold", fill: rgb("#1e293b"))[Backend & APIs:], [Node.js, Express.js, RESTful APIs, API Proxying, JSON, CORS],
  text(weight: "bold", fill: rgb("#1e293b"))[AI & Agentic Tooling:], [Google Antigravity, Claude Code, Autonomous Agent Workflows, Prompt Architecture],
  text(weight: "bold", fill: rgb("#1e293b"))[Tools & Environments:], [Git, GitHub, Linux, Bash / Shell, Terminal / CLI, Vercel]
)

// --- FEATURED PROJECTS ---
#section("Projects & Open Source")

#entry(
  "StudyPY — Interactive CS Sandbox & Learning Platform", "JavaScript, Node.js, Express, HTML5/CSS3, REST APIs",
  "Full-Stack Web Application (github.com/BrianC0des/Studypy)", "Lead Developer",
  [
    - Developed a centralized learning platform and sandbox hub for Computer Science students featuring real-time multi-language code execution (Python, Java, C/C++, JavaScript, PHP).
    - Designed interactive visualizers: dynamic SVG Git Branching Simulator, SQL Join & Venn Diagram Visualizer, and DSA animators for educational reinforcement.
    - Built a decoupled Node.js and Express backend server to proxy compiler API execution requests, enforce rate limiting, and structure data delivery.
    - Engineered a lightweight, responsive interface using vanilla JavaScript, modern CSS, and modular components for desktop and mobile devices.
  ]
)

#entry(
  "TermChat — Cross-Platform Terminal Messaging & File Vault", "CLI / Terminal, P2P Architecture, Ed25519 Cryptography",
  "Terminal Communication Suite (github.com/BrianC0des/termchat)", "Creator & Developer",
  [
    - Designed a decentralized terminal UI communication and file-sharing tool featuring end-to-end encrypted room messaging and zero-trust room tokens.
    - Integrated an interactive Shared Files Vault (`/files`, `/get`) facilitating direct peer-to-peer file sharing without centralized intermediaries.
    - Implemented ephemeral self-destructing chat rooms (`/destroy`) with automated countdown timers for privacy-focused communication.
    - Packaged multi-platform builds supporting Linux, macOS, Windows, and Android Termux environments.
  ]
)
