\ProvidesClass{abstract}[2024/11/17 v3.00 abstract by M.Higashino]
\LoadClass[
  paper=a4paper,
  twocolumn,
  jafontsize=10pt,
  oneside,
  dvipdfmx,
  head_space=2.5cm, % top
  foot_space=2.5cm, % bottom
  gutter=2.5cm,     % left
  fore-edge=2.5cm,  % right
]{jlreq}
\jlreqsetup{
  thebibliography_heading={
    \section*{\refname}
    \addcontentsline{toc}{section}{\refname}
    \small
  },
}

% setspace – Set space between lines
% https://ctan.org/pkg/setspace
\RequirePackage{setspace}
\setstretch{0.75}

% enumitem – Control layout of itemize, enumerate, description
% https://ctan.org/pkg/enumitem
\RequirePackage{enumitem}
\setdescription{font=\sffamily\bfseries,labelindent=1zw}
\setenumerate{leftmargin=2.5zw}

% amsmath – AMS mathematical facilities for LaTeX
% https://ctan.org/pkg/amsmath
\RequirePackage{amsmath}

% amsfonts – TeX fonts from the American Mathematical Society
% https://ctan.org/pkg/amsfonts
\RequirePackage{amsfonts}

% numprint – Print numbers with separators and exponent if necessary
% https://ctan.org/pkg/numprint
\RequirePackage{numprint}

% siunitx – A comprehensive (SI) units package
% https://ctan.org/pkg/siunitx
\RequirePackage{siunitx}

% url – Verbatim with URL-sensitive line breaks
% https://ctan.org/pkg/url
\RequirePackage{url}

% ascmac – Boxes and picture macros with Japanese vertical writing support
% https://ctan.org/pkg/ascmac
\RequirePackage{ascmac}

% graphicx – Enhanced support for graphics
% https://ctan.org/pkg/graphicx
\RequirePackage[dvipdfmx]{graphicx}

% subcaption – Support for sub-captions
% https://ctan.org/pkg/subcaption
\RequirePackage{silence}
\WarningFilter{caption}{Unknown document class (or package)}
\RequirePackage[skip=0pt]{subcaption}

% hyperref – Extensive support for hypertext in LaTeX
% https://ctan.org/pkg/hyperref
% 他のパッケージよりも後ろで読み込む必要がある。
\RequirePackage[dvipdfmx]{hyperref}
\hypersetup{
  hidelinks,
  setpagesize=false,
  bookmarksopen,
  bookmarksnumbered,
  breaklinks,
}

% pxjahyper – Hyperref support for pLaTeX
% https://ctan.org/pkg/pxjahyper
% hyperref.styが生成するしおりの文字化けを自動で防ぐ。
\RequirePackage[dvipdfmx]{pxjahyper}

% styles
\pagestyle{empty}

% commmands
\newcommand\figref[1]{図~\ref{#1}}
\newcommand\tabref[1]{表~\ref{#1}}
\newcommand\equref[1]{\eqref{#1}}

% makeabstracttitle
% 講演番号 - 左上/12ポイント/セリフ体の欧文フォント（Times New Romanなど）/ボールド/
% 題目 - 講演番号と同じ行/12ポイント/ボールド/2行に渡っても可/
% 所属研究室名と氏名 - 題目の次の行/10ポイント/学生番号は記載しない/
\RequirePackage{xkeyval}
\define@cmdkeys{abstract}[abstract@]{
  presentno,
  title,
  labname,
  lastname,
  firstname,
}
\def\makeabstracttitle[#1]{
  \setkeys{abstract}{#1}
  \twocolumn[
    \large\noindent\textbf\abstract@presentno
    \vspace{-\baselineskip}
    \vspace{-\topsep}
    \begin{center}
      \large\textbf\abstract@title
    \end{center}
    \begin{flushright}
      \normalsize\textbf\abstract@labname\quad\textbf\abstract@lastname\ \textbf\abstract@firstname
    \end{flushright}
    \vspace{1zh}
  ]
}
