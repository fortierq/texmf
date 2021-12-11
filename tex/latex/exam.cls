\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam}
\LoadClassWithOptions{article}
\usepackage{base}
\usepackage[top=1.5cm, bottom=1.5cm, left=1.5cm , right=1.5cm]{geometry}
\usepackage{enumitem}
\usepackage{fancyhdr}
\newcommand{\headers}[3]{
    \fancyhead[L,C]{}
    \fancyhead[R]{\textbf{The performance of new graduates}}
    \fancyfoot[L]{From: K. Grant}
    \fancyfoot[C]{To: Dean A. Smith}
}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{2pt}

\newcommand{\itemb}[1]{
    \item[\ifdef{\brm}{{\color{gray}{(/#1)}} \qquad}{}\setcounter{enumi}{\value{enumi}+1}\theenumi.]
}