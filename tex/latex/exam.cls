\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam}
\def\cor{0}
\def\class{MP2I}
\DeclareOption{cor}{\def\cor{1}}
\DeclareOption{mp2i}{\def\class{MP2I} \def\subject{Informatique}}
\DeclareOption{ocia}{\def\class{M1 IA} \def\subject{OC}}
\DeclareOption{itc1}{\def\class{MPSI} \def\subject{Informatique}}
% \DeclareOption{ds}{\def\type{DS}}
\ProcessOptions\relax
\LoadClassWithOptions{article}

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
}
\newcommand{\ds}[2]{\headers{\class}{DS #1 (#2 H)\if\cor1 : corrigé \fi}{\subject}}
\newcommand{\td}[2]{\headers{\class}{TD #1\if\cor1 : corrigé \fi}{\subject}}

\renewcommand{\headrulewidth}{0.4pt}

\newcommand{\itemb}[1]{
    \item[\ifdef{\brm}{{\color{gray}{(/#1)}} \hspace{.1cm}}{}\setcounter{enumi}{\value{enumi}+1}\theenumi.]
}

\usepackage{amsthm}
\setlength{\columnseprule}{0.4pt}
\theoremstyle{definition}
\newtheorem{ex}{Exercice}
\newenvironment{exo}[1]
{\begin{ex} \textbf{#1}\newline}
{\end{ex}
\bigskip}
