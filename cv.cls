\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv}[2017/12/01 Classe LaTeX para FSC da UnB]

\LoadClass[a4paper, 10pt]{article}

\RequirePackage[hmargin=2cm, vmargin=2cm]{geometry}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{pagecolor}
\RequirePackage{color}
\RequirePackage{hyperref}

% Setting default font: Helvetica
\renewcommand*\rmdefault{phv}
\renewcommand{\familydefault}{\sfdefault}

% Defining link layout
\hypersetup{
  hidelinks = true,
  % colorlinks = false,
  % allbordercolors = {0 0 0},
  % pdfborderstyle = {/S/U/W 1.2}%
}

% Adding new definition commands
\newcommand\phone[1]{\def\@phone{#1}}
\newcommand\location[1]{\def\@location{#1}}
\newcommand\githubuser[1]{\def\@githubuser{#1}}
\newcommand\email[1]{\def\@email{#1}}

% Setting anchor definitions
\def\@github{\href{https://www.github.com/\@githubuser}{github.com/\@githubuser}}
\def\@mailto{\href{mailto:felipekss@gmail.com}{felipekss@gmail.com}}

% Defining background color
\definecolor{ocher}{RGB}{216, 215, 186}

% Defining document color
% \pagecolor{ocher}

% Removing paragraph first ident
\setlength\parindent{0pt}

% Supress section numbering
\setcounter{secnumdepth}{0} % Suppress section numbering

% Defining new title header
\renewcommand{\maketitle}{
  {\LARGE \bfseries \@author} \\
  \rule{\linewidth}{0.5mm} \\[.2cm]
  \@mailto \hfill \@github \hfill \@phone \hfill \@location \\
  \rule{\linewidth}{0.5mm} \\
}

\newenvironment{chronoitem}[3]
{{\bf #1}, {\it #2} \hfill \textbf{#3}\par\footnotesize}
  % Content goes here
{\vspace{.5cm}\normalsize}
