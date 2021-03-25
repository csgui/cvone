% cvone class - The one page curriculum

\NeedsTeXFormat{LaTeX2e} % Latex version
\ProvidesClass{cv0ne}[2021/03/20]

% ---------------------------------------------------------------------------
% Loading the article class as a base.
% ---------------------------------------------------------------------------
\LoadClass{article}

% ---------------------------------------------------------------------------
% The T1 font encoding is an 8-bit encoding for fonts.
% ---------------------------------------------------------------------------
\RequirePackage[T1]{fontenc}

% ---------------------------------------------------------------------------
% Use Gyre Heros font as default font typeface.
% ---------------------------------------------------------------------------
\RequirePackage{tgheros}

% ---------------------------------------------------------------------------
% Use sans-serify font family as default to the whole document
% ---------------------------------------------------------------------------
\renewcommand{\familydefault}{\sfdefault}

% ---------------------------------------------------------------------------
% The geometry package offers a simple way to change the length and layout
% of different elements such as the paper size, margins, footnote,
% header, orientation, etc.
% ---------------------------------------------------------------------------
\RequirePackage[a4paper, top=30pt, right=20pt, bottom=30pt, left=20pt]{geometry}

% ---------------------------------------------------------------------------
% Alternative section titles
% ---------------------------------------------------------------------------
\RequirePackage{titlesec}

% ---------------------------------------------------------------------------
% Fontawesome package
% ---------------------------------------------------------------------------
\RequirePackage{fontawesome}

% ---------------------------------------------------------------------------
% To define some custom color
% ---------------------------------------------------------------------------
\RequirePackage{xcolor}
\definecolor{customblue}{RGB}{0,120,150}
\definecolor{customgrey}{HTML}{808080}
\definecolor{customlightgrey}{HTML}{F5F5F5}
\definecolor{customorange}{RGB}{250,150,10}

% ---------------------------------------------------------------------------
% Easy way to create colored text boxes.
% Used in this class into header and footer.
% ---------------------------------------------------------------------------
\RequirePackage[most]{tcolorbox}

% ---------------------------------------------------------------------------
% Add some programming capability like loops.
% ---------------------------------------------------------------------------
\RequirePackage{pgffor} % for loop usage

% ---------------------------------------------------------------------------
% The \pagestyle command changes the style from the current page
% on throughout the remainder of the document.
%
% empty - Both the header and footer are cleared.
% ---------------------------------------------------------------------------
\pagestyle{empty}

% ---------------------------------------------------------------------------

\titleformat{\section}         % Customise the \section command.
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright).
                               %
  {}{0em}                      % Parameter used as the section title and
                               % the margin size - (0em).
                               % Note: em	is roughly the width of an 'M' (uppercase)
                               % in the current font (it depends on the font used).
                               %
  {}                           % Can be used to enter text after the section
                               %
  [\titlerule]                 % Inserts a horizontal line after the heading

% ---------------------------------------------------------------------------

\titleformat{\subsection}           % Customise the \subsection command.
  {\normalsize\scshape\raggedright} % Same thing above
  {}{0em}
  {}

% ---------------------------------------------------------------------------

\newcommand{\sectiontext}[1]{
    \begin{changemargin}{0.25cm}{0.25cm}
      {\fontfamily{cmss}\selectfont
        {#1}
      }
    \end{changemargin}
}

% ---------------------------------------------------------------------------

\def\changemargin#1#2{\list{}{\rightmargin#2\leftmargin#1}\item[]}
\let\endchangemargin=\endlist

% ---------------------------------------------------------------------------

\newcommand{\sixtypercent}[1]{
  \begin{changemargin}{0.25cm}{0.0cm}{\fontfamily{cmss}\selectfont\textcolor{customblue}{#1}\\}
    \textcolor{customorange}{
      \foreach \n in {1,...,6}{
        \colorbox{customorange}{.}
      }
      \foreach \n in {1,...,4}{
        \colorbox{customblue!8}{.}
      }
    }
  \end{changemargin}
}

% ---------------------------------------------------------------------------

\newcommand{\seventypercent}[1]{
  \begin{changemargin}{0.25cm}{0.0cm}{\fontfamily{cmss}\selectfont\textcolor{customblue}{#1}\\}
    \textcolor{customorange}{
      \foreach \n in {1,...,7}{
        \colorbox{customorange}{.}
      }
      \foreach \n in {1,...,3}{
        \colorbox{customblue!8}{.}
      }
    }
  \end{changemargin}
}

% ---------------------------------------------------------------------------

\newcommand{\eightypercent}[1]{
  \begin{changemargin}{0.25cm}{0.0cm}{\fontfamily{cmss}\selectfont\textcolor{customblue}{#1}\\}
    \textcolor{customorange}{
      \foreach \n in {1,...,8}{
        \colorbox{customorange}{.}
      }
      \foreach \n in {1,...,2}{
        \colorbox{customblue!8}{.}
      }
    }
  \end{changemargin}
}

% ---------------------------------------------------------------------------

\newcommand{\ninetypercent}[1]{
  \begin{changemargin}{0.25cm}{0.0cm}{\fontfamily{cmss}\selectfont\textcolor{customblue}{#1}\\}
    \textcolor{customorange}{
      \foreach \n in {1,...,9}{
        \colorbox{customorange}{.}
      }
      \colorbox{customblue!8}{.}
    }
  \end{changemargin}
}

% ---------------------------------------------------------------------------

\newcommand{\employmentitem}[5]{
  \begin{changemargin}{0.25cm}{0.25cm}
    {\fontfamily{cmss}\selectfont
      \textcolor{customblue}{#3}\hfill\textcolor{customblue}{#4}\\
      \begin{minipage}[t]{0.1\linewidth}
        \small{#1}\\{#2}
      \end{minipage}
      \begin{minipage}[t]{0.9\linewidth}
        \textcolor{customgrey}{#5}
      \end{minipage}
    }
  \end{changemargin}
}

% ---------------------------------------------------------------------------

\newcommand{\makeheader}[3]{
  \begin{tcolorbox}[colback=customblue!5,colframe=customblue!5,coltext=customblue]
    \Huge\textbf{{#1}} {#2}
    \tcblower
    \Large{#3}
  \end{tcolorbox}
}

% ---------------------------------------------------------------------------

\newcommand{\makefooter}[3]{
  \vfill
  \begin{tcolorbox}[colback=customblue!5,colframe=customblue!5,coltext=customblue]
    \fontfamily{cmss}\selectfont
    \faPhone\,{#1}\hfill\faMapMarker\,{#2}\hfill\faEnvelope\,{#3}
  \end{tcolorbox}
}
