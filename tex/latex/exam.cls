\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam}
\def\cor{0}
\def\class{MP2I}
\def\qfortier{\href{https://fortierq.github.io}{Q. Fortier}}
\DeclareOption{cor}{\def\cor{1}}
\DeclareOption{resume}{\def\class{Résumé} \def\subject{\qfortier}}
\DeclareOption{mp2i}{\def\class{\href{https://mp2i-info.github.io}{MP2I}}\def\subject{\qfortier}}
\DeclareOption{mpi}{\def\class{MPI} \def\subject{\qfortier}}
\DeclareOption{ocia}{\def\class{M1 IA} \def\subject{OC}}
\DeclareOption{itc1}{\def\class{ITC1} \def\subject{\qfortier}}
\DeclareOption{itc2}{\def\class{\href{https://cpge-itc.github.io/itc2}{ITC2}} \def\subject{\qfortier}}
\DeclareOption{mp}{\def\class{\href{https://mp-info.github.io}{MP/MP* option}} \def\subject{\qfortier}}
\DeclareOption{mpi}{\def\class{MPI} \def\subject{\qfortier}}
% \DeclareOption{ds}{\def\type{DS}}
\ProcessOptions\relax
\LoadClassWithOptions{article}

\setlength{\columnsep}{.4cm}

\usepackage[top=1.5cm, bottom=1.5cm, left=1cm, right=1cm]{geometry}
\usepackage{enumitem}
\usepackage{fancyhdr}
\newcommand{\headers}[3]{
    \fancyhf{}
    \thispagestyle{fancy}
    \setlength{\headheight}{24pt}
    \fancyhead[L]{\Large #1}
    \fancyhead[C]{\Large #2}
    \fancyhead[R]{\Large #3}
    % \fancyfoot[C]{Quentin Fortier}
}
\renewcommand{\title}[1]{\headers{\class}{\textbf{#1\if\cor1 (corrigé) \fi}}{\subject}}
\newcommand{\ds}[1]{\headers{\class}{\textbf{DS #1\if\cor1 (corrigé) \fi}}{\subject}}
\newcommand{\td}[2]{\headers{\class}{TD #1\if\cor1 : corrigé \fi}{\subject}}
\newcommand{\colle}[2]{\headers{\class}{Colle #1\if\cor1 (corrigé) \fi}{\subject}}

\renewcommand{\headrulewidth}{0.4pt}

\newcommand{\itemb}[1]{
    \item[\ifdef{\brm}{{\color{gray}{(/#1)}} \hspace{.1cm}}{}\setcounter{enumi}{\value{enumi}+1}\theenumi.]
}

\usepackage{amsthm}
\setlength{\columnseprule}{0.4pt}
\theoremstyle{definition}
\newtheorem{ex}{Exercice}
\newenvironment{exo}[1] {
    \begin{ex} \textbf{#1}\newline
} {
    \end{ex}
    \bigskip
}
