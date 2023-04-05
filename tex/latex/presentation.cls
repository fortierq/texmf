\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{presentation}
\LoadClass{beamer} 
\newcommand{\ex}{\quad \(\rightarrow\)}
\usefonttheme[onlymath]{serif}
\mode<presentation> { \usetheme{Madrid} }
\newcount\Level
\let\Section=\section\def\section{\global\Level=0\Section}
\let\Subsection=\subsection\def\subsection{\global\Level=1\Subsection}

\newcommand{\ttl}{\secname \if\the\Level1 : \subsecname \fi}

\setbeamersize{text margin left=18pt,text margin right=18pt}
\setbeamertemplate{footline}{}
\beamertemplatenavigationsymbolsempty

\author{\href{https://fortierq.github.io}{Quentin Fortier}}

\renewcommand{\thesection}{\Roman{section}} 
\pagenumbering{gobble}
