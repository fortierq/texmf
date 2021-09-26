\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exercice}
\LoadClassWithOptions{article}
\usepackage{base} 
\usepackage[top=2cm, bottom=1.5cm, left=1cm, right=1cm]{geometry}
\usepackage{fancyhdr} % pour les en-têtes

\usepackage{enumitem}

\setlength{\columnseprule}{0.4pt}
\theoremstyle{definition}
\newtheorem{ex}{Exercice}%[section]
\newenvironment{exo}[1]
{\begin{ex} \textbf{#1}\newline}
{\end{ex}
\bigskip}