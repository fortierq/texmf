\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam}
\LoadClassWithOptions{article}
\usepackage[top=1.5cm, bottom=1.5cm, left=1.5cm , right=1.5cm]{geometry}
\usepackage{enumitem}
\usepackage{fancyhdr}
\newcommand{\headers}[3]{
    \fancyhf{}
    \thispagestyle{fancy}
    \setlength{\headheight}{24pt}
    \fancyhead[L]{\Large #1}
    \fancyhead[C]{\Large #2}
    \fancyhead[R]{\Large #3}
% \fancyfoot[C]{{\href{https://mp2i-fsm.github.io}{https://mp2i-fsm.github.io}}}
}
\newcommand{\mpii}[2]{\headers{MP2I}{DS #1 d'informatique}{#2H}}

\renewcommand{\headrulewidth}{0.4pt}

\newcommand{\itemb}[1]{
    \item[\ifdef{\brm}{{\color{gray}{(/#1)}} \qquad}{}\setcounter{enumi}{\value{enumi}+1}\theenumi.]
}