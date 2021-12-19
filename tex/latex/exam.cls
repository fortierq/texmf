\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam}
\def\cor{0}
\def\class{MP2I}
% \def\type{DS}
\DeclareOption{cor}{\def\cor{1}}
\DeclareOption{mp2i}{\def\class{MP2I}}
% \DeclareOption{ds}{\def\type{DS}}
\ProcessOptions\relax
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
\newcommand{\ds}[2]{\headers{\class}{DS #1\if\cor1 : corrigé \fi}{#2H}}
\newcommand{\td}[1]{\headers{\class}{TD #1\if\cor1 : corrigé \fi}{}}

\renewcommand{\headrulewidth}{0.4pt}

\newcommand{\itemb}[1]{
    \item[\ifdef{\brm}{{\color{gray}{(/#1)}} \qquad}{}\setcounter{enumi}{\value{enumi}+1}\theenumi.]
}