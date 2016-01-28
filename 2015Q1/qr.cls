%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Name:  qr.cls
% LaTeX parameters for Operations Program quarterly reports
%
% Created:   May 18, 2015
% Contact:  Aron Soha
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\fileversion{0.1}\def\filedate{18 May. 2015}
\typeout{CMS paper style Version <\fileversion>, <\filedate>}
% -------------------------------- identification ---------------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qr}[2015/05/18]
% ---------------------------  declaration of options --
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
% ----------------------------  execution of options ------------------------
\ProcessOptions
% --------------------------------package loading ---------------------------
\LoadClass{article}

%%%%%%%% page size to be printable on both A4 and US Letter %%%%%%%

\setlength{\hoffset}{-1in}
\setlength{\voffset}{-1in}
\setlength{\oddsidemargin}{25mm}
\setlength{\evensidemargin}{25mm}
\setlength{\marginparwidth}{25mm}
\setlength{\marginparsep}{\baselineskip}
\setlength{\topmargin}{20mm}
\setlength{\headheight}{0mm}
\setlength{\headsep}{0mm}
\setlength{\footskip}{9mm}
\setlength{\textwidth}{16cm}
\ifcase \@ptsize
\setlength{\textheight}{57\baselineskip}
\or
\setlength{\textheight}{51\baselineskip}
\or 
\setlength{\textheight}{46\baselineskip}
\fi
\addtolength{\textheight}{\topskip}

%%%%% floats handling parameters for better placing of figures %%%%%%%
\renewcommand{\topfraction}{1.0}
\renewcommand{\dbltopfraction}{1.0}
\renewcommand{\bottomfraction}{1.0}
\renewcommand{\textfraction}{0.2}
\setlength{\intextsep}{6pt}
\setlength{\floatsep}{6pt}
\setlength{\textfloatsep}{6pt}
\setlength{\dblfloatsep}{6pt}
\setlength{\dbltextfloatsep}{6pt}

%%%%%%%%%%%%%%%% nonindented paragraphs %%%%%%%%%%%%%%%
\setlength{\parindent}{0pt}
\setlength{\parskip}{0.5\baselineskip}
 
%%%%%%%%%%%%%%%%%%%%% section headings %%%%%%%%%%%%%%%%%%%%%%%%%%

\def\section{\@startsection {section}{1}{\z@}%
{ 1\baselineskip plus  .5\baselineskip minus  .25\baselineskip}%
{+0.1pt plus +0.1pt minus +0.1pt}{\reset@font\Large\bfseries}}
 
\def\subsection{\@startsection{subsection}{2}{\z@}%
{ 1\baselineskip plus  .5\baselineskip minus  .25\baselineskip}%
{+0.1pt plus +0.1pt minus +0.1pt}{\reset@font\large\bfseries}}
 
\def\subsubsection{\@startsection{subsubsection}{3}{\z@}%
{ 1\baselineskip plus  .5\baselineskip minus  .25\baselineskip}%
{+0.1pt plus +0.1pt minus +0.1pt}{\reset@font\normalsize\bfseries}}

%%%%%%%%%%%%%%%% define PostScript fonts %%%%%%%%%%%%%%%
  \renewcommand{\sfdefault}{phv}        % sansserif  = helvetica
  \renewcommand{\rmdefault}{ptm}        % roman      = times
  \renewcommand{\ttdefault}{pcr}        % typewriter = courier
  \newcommand{\hm}{\sf}                 % helvetica medium 
  \newcommand{\hb}{\bfseries\sffamily}  % helvetica bold
  \newcommand{\Hb}{\hb\fontsize{44pt}{46pt}\selectfont}  % HUGE helvetica bold

%%%%%%%%%%%%%%%% two floating figures, side by side %%%%%%%%%%%%%%%
\newenvironment{2figures}[1]{\begin{figure}[#1] 
  \begin{center}
    \begin{tabular}{p{.47\textwidth}p{.47\textwidth}} }
 {  \end{tabular}
  \end{center} 
 \end{figure}
}

%%%%%%%%%%%%%%%%%%%%%% footnotes %%%%%%%%%%%%%%%%%%%%%
\def\footnoterule{\kern-3\p@
 \hrule width .4\columnwidth
 \kern 2.6\p@}
 
%%%%%%%%%%%% Environment makefntext %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\long\def\@makefntext#1{\parindent=\z@
\begin{list}{}%
   {\labelwidth1.5em\leftmargin\labelwidth% set global width
    \labelsep3pt%  horizontal separation between term and item
    \itemsep0pt%   vertical separation between two items
    \parsep0pt%    vertical separation two paragraphs in an item
    \topsep0pt%    vertical separation text/list
    \small}
%   \footnotesize}
    \item [\hfill $^{\mathrm{\@thefnmark)}}$] #1\end{list}}% ***** end of makefntext
 
%%%%%%%%%%%% Environment Figlist %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{Figlist}[1]{% Give highest figure number as parameter
\vskip2mm\begin{center}{\bf FIGURE CAPTIONS}\end{center}
\begin{list}{\bf Fig.\hfill\arabic{figure} : }{\usecounter{figure}
    \settowidth{\labelwidth}{\bf Fig . #1 : }% define global width
    \leftmargin\labelwidth \labelsep0pt
    \itemsep0pt plus 0.1ex minus 0.1ex
    \parsep0pt plus 0.1ex minus 0.1ex
    \topsep\baselineskip}}%
{\end{list}\setcounter{figure}{0}% Reset figure counter
}% ***** end of environment{Figlist} ****

%%%%%%%%%%%% Environment Tablist %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{Tablist}[1]{% Give highest table number as parameter
\vskip2mm\begin{center}{\bf TABLE CAPTIONS}\end{center}
\begin{list}{\bf Tab.\hfill\arabic{table} : }{\usecounter{table}
    \settowidth{\labelwidth}{\bf Fig . #1 : }% define global width
    \leftmargin\labelwidth \labelsep0pt
    \itemsep0pt plus 0.1ex minus 0.1ex
    \parsep0pt plus 0.1ex minus 0.1ex
    \topsep\baselineskip}}%
{\end{list}\setcounter{table}{0}% Reset table counter
}% ***** end of environment{Tablist} ****
 
\RequirePackage{graphics}

\endinput
