\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exercice}
\LoadClass[twocolumn]{article}
\usepackage{base} 
\usepackage[top=2.5cm, bottom=2cm, left=0.5cm, right=0.5cm]{geometry}
\usepackage{fancyhdr} % pour les en-têtes

\usepackage{enumitem}

\setlength{\columnseprule}{0.4pt}
\theoremstyle{definition}
\newtheorem{ex}{Exercice}%[section]
\newenvironment{exo}[1]
{\begin{ex} \textbf{#1}\newline}
{\end{ex}
\bigskip}