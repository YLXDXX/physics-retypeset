%%% % -*- coding: utf-8 -*-
%%% ----------------------------------------------------------------------------
%%% retypeset: 高中物理甲种本重排
%%% Copyright : 2021-2025 (c) <ylxdxx@qq.com>
%%% Repository: 
%%% License   : The LaTeX Project Public License 1.3c
%%% ----------------------------------------------------------------------------

%LaTeX3 环增的开关
%\ExplSyntaxOn
%\ExplSyntaxOff

%在文档开始前后添加处理代码
%\AtBeginDocument{code}
%\AtEndDocument{code}


%格式声名
\NeedsTeXFormat{LaTeX2e}[2021-11-15]

\RequirePackage{expl3}


%This is a special version of the standard \ProvidesPackage macro, 
%which will automatically turn on LaTeX3 programming syntax and 
%more importantly turn it off at the end of the package. 
%It also deals properly with nested package loading, and
%so is the recommended way to use LaTeX3 syntax inside LaTeX2e packages.
\ProvidesExplPackage{retypeset} % Package name
{2025-05-22} % Release date
{0.1} % Release version
{高中物理甲种本重排模板} % Description 


\LoadClass[a4paper, openany, fontset=windows, zihao=-4,]{ctexbook}

%\RequirePackage{anysize}
%\papersize{26cm}{18.5cm}
%\marginsize{2.25cm}{2.25cm}{2cm}{2cm}
\RequirePackage[margin=2.5cm]{geometry}


% 修改脚注的编号为加圈样式，并且各页单独编号
\RequirePackage{pifont}
\RequirePackage[perpage,symbol*]{footmisc}
\DefineFNsymbols{circled}{{\ding{192}}{\ding{193}}{\ding{194}}
	{\ding{195}}{\ding{196}}{\ding{197}}{\ding{198}}{\ding{199}}{\ding{200}}{\ding{201}}}
\setfnsymbol{circled}



\RequirePackage{amsmath,amsfonts,mathrsfs,amssymb}
\RequirePackage{graphicx}

\RequirePackage[font=bf,labelfont=bf,labelsep=quad]{caption}

\RequirePackage{tikz}



\RequirePackage{physics}
%\RequirePackage{amsthm}
\RequirePackage{ntheorem}
\theoremseparator{\;}



\RequirePackage{blkarray}
\RequirePackage{bm}
\RequirePackage[bookmarksnumbered,draft=false,CJKbookmarks=true,colorlinks=true, linkcolor=blue]{hyperref}

\RequirePackage{tkz-euclide}


\theoremstyle{plain}
\theoremheaderfont{\normalfont\bfseries} 
\theorembodyfont{\normalfont}


% \newtheorem{defn}{定义}[chapter]
% \newtheorem{thm}{定理}[chapter]
% \newtheorem{yl}{引理}[chapter]
% \newtheorem{tl}{推论}[chapter]

%\RequirePackage[framemethod=tikz]{mdframed}
%
%\newmdtheoremenv[
%  linecolor=black,
%  leftmargin=20pt,
%  innerleftmargin=5pt,
%  innerrightmargin=2pt, roundcorner=5pt
%  ]{defn}{定义}[chapter]
%  \newmdtheoremenv[
%	linecolor=black,
%	leftmargin=20pt,
%	innerleftmargin=5pt, 
%	innerrightmargin=2pt, roundcorner=5pt
%	]{thm}{定理}[chapter]
%
%	\newmdtheoremenv[
%  linecolor=black,
%  leftmargin=20pt,
%  innerleftmargin=5pt,
%  innerrightmargin=2pt, roundcorner=5pt
%  ]{yl}{引理}[chapter]
%
%  \newmdtheoremenv[
%  linecolor=black,
%  leftmargin=20pt,
%  innerleftmargin=5pt,
%  innerrightmargin=2pt, roundcorner=5pt
%  ]{tl}{推论}[chapter]
%
%
\newtheorem{example}{\bf 例题}[chapter]
\newenvironment{solution}{\noindent {\bf 解答：}}{}%{\hfill $\blacksquare$\par}


\renewcommand{\proofname}{\bf 证明：}
\newenvironment{proof}{{\noindent \bf 证明：}}{}%{\hfill $\square$\par}

\newcommand{\E}{\mathbb{E}}
\renewcommand{\Pr}{\mathbb{P}}
\newcommand{\EP}{\mathbb{E}^{\mathbb{P}}}
\newcommand{\EQ}{\mathbb{E}^{\mathbb{Q}}}
\newcommand{\dif}{\,{\rm d}}
\newcommand{\Var}{{\rm Var}}
\newcommand{\Cov}{{\rm Cov}}



\RequirePackage{tcolorbox}
\tcbuselibrary{breakable}
\tcbuselibrary{most}

% \tcolorboxenvironment{tl}{colback = cyan!5!white, colframe = cyan!75!black,
	%     colbacktitle = cyan!85!black, enhanced,  breakable}

% \tcolorboxenvironment{thm}{colback = magenta!5!white, colframe = magenta!75!black, 
	%     colbacktitle = magenta!85!black, enhanced,     breakable}

% \tcolorboxenvironment{yl}{colback = red!5!white, colframe = red!75!black, 
	%     colbacktitle = red!85!black, enhanced,     breakable}

% \tcolorboxenvironment{defn}{colback = blue!5!white, colframe = blue!75!black,
	%     colbacktitle = blue!85!black, enhanced,    breakable
	% }


%\tcolorboxenvironment{tl}{colback = cyan!5!white, colframe = cyan!75!black, fonttitle = \bfseries,
	%    colbacktitle = cyan!85!black, enhanced,
	%    attach boxed title to top center={yshift=-2mm}, breakable}
\setcounter{tocdepth}{1}

\setcounter{secnumdepth}{3}



\ctexset {
	section = {
		name = {第,节},
		number = \chinese{section}},
	subsection = {
		name = {\hspace{2em},、\hspace{-1em}},
		number = \chinese{subsection}
	},
	subsubsection = {
		name = {\hspace{2em}（,）\hspace{-1em}},
		number = \chinese{subsubsection},
	}
}


%\RequirePackage{fancyhdr}
%
%% \RequirePackage{enumitem}   [itemindent=1em]
%
%
\renewcommand{\contentsname}{目~~录}

\RequirePackage{paralist}
\let\itemize\compactitem
%\let\enditemize\endcompactitem
\let\enumerate\compactenum
%\let\endenumerate\endcompactenum
\let\description\compactdesc
%\let\enddescription\endcompactdesc


\RequirePackage{titlesec}
\titlespacing{\chapter}{0pt}{*1}{*1}
\titlespacing{\section}{0pt}{*1}{*1}
\titlespacing{\subsection}{0pt}{*1}{*1}

\titlespacing{\subsubsection}{0pt}{*1}{*1}

\renewcommand{\le}{\leqslant}
\renewcommand{\ge}{\geqslant}
\NewDocumentCommand \atom  { mmm }%
{%
    {}^{#2}\c_math_subscript_token{#3}{\rm #1}%
}
\RequirePackage{mathtools}

\setlength{\abovecaptionskip}{0.cm}
\setlength{\belowcaptionskip}{-0.cm}

%\setmainfont{Times New Roman}
\usetikzlibrary{decorations.pathmorphing, patterns}
\usetikzlibrary{calc, patterns, decorations.markings}
\usetikzlibrary{positioning, decorations}

%\cover{cover.pdf}

\RequirePackage{yhmath}

%物理单位
%取 unit 首字母
\newcommand{\Ums}{\;\text{m}/\text{s}} % m/s
\newcommand{\Ucms}{\;\text{cm}/\text{s}} % cm/s
\newcommand{\Umsq}{\;\text{m}/\text{s}^2} % m/s^2
\newcommand{\Ucmsq}{\;\text{cm}/\text{s}^2} % cm/s^2
\newcommand{\Ukmh}{\;\text{km}/\text{h}} % km/h
\newcommand{\Us}{\;\text{s}} % s
\newcommand{\Usq}{\;\text{s}^2} % s^2
\newcommand{\Um}{\;\text{m}} % m
\newcommand{\Umq}{\;\text{m}} % m^2
\newcommand{\Ukgf}{\;\text{kgf}} % kgf
\newcommand{\Ukg}{\;\text{kg}} % kg
\newcommand{\UN}{\;\text{N}} % N
\newcommand{\UNkg}{\;\text{N}/\text{kg}} % N/kg
\newcommand{\Udyn}{\;\text{dyn}} % dyn
\newcommand{\Ug}{\;\text{g}} % g
\newcommand{\UNmqkgq}{\;\text{N}\cdot\text{m}^2/\text{kg}^2} % N·m^2/kg^2 (万有引力常量单位)
\newcommand{\Ukms}{\;\text{km}/\text{s}} % km/s
\newcommand{\Ukmsq}{\;\text{km}/\text{s}^2} % km/s^2
\newcommand{\UNm}{\;\text{N}\cdot\text{m}} % N·m
\newcommand{\UNC}{\;\text{N}/\text{C}} %N/C

%取 alone 首字母
\newcommand{\UmsA}{\text{m}/\text{s}} % m/s
\newcommand{\UcmsA}{\text{cm}/\text{s}} % cm/s
\newcommand{\UmsqA}{\text{m}/\text{s}^2} % m/s^2
\newcommand{\UcmsqA}{\text{cm}/\text{s}^2} % cm/s^2
\newcommand{\UkmhA}{\text{km}/\text{h}} % km/h
\newcommand{\UsA}{\text{s}} % s
\newcommand{\UsqA}{\text{s}^2} % s^2
\newcommand{\UmA}{\text{m}} % m
\newcommand{\UmqA}{\text{m}} % m^2
\newcommand{\UkgfA}{\text{kgf}} % kgf
\newcommand{\UkgA}{\text{kg}} % kg
\newcommand{\UNA}{\text{N}} % N
\newcommand{\UNkgA}{\text{N}/\text{kg}} % N/kg
\newcommand{\UdynA}{\text{dyn}} % dyn
\newcommand{\UgA}{\text{g}} % g
\newcommand{\UNmqkgqA}{\text{N}\cdot\text{m}^2/\text{kg}^2} % N·m^2/kg^2 (万有引力常量单位)
\newcommand{\UkmsA}{\;\text{km}/\text{s}} % km/s
\newcommand{\UkmsqA}{\;\text{km}/\text{s}^2} % km/s^2
\newcommand{\UNmA}{\text{N}\cdot\text{m}} % N·m
\newcommand{\UNCA}{\text{N}/\text{C}} %N/C

\RequirePackage{tkz-euclide}


\RequirePackage{subcaption}
\RequirePackage{zhnumber}

\DeclareCaptionFormat{MySubfigFormat}{\zihao{-5}{\heiti #1#2}\space#3 \par}
\captionsetup[subfigure]{format=MySubfigFormat,justification=centering,labelformat=simple}
\renewcommand{\thesubfigure}{\zhtiangan{\arabic{subfigure}}}




