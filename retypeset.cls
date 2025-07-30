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

\RequirePackage{mhchem} %核素、同位素、化学式
\NewDocumentCommand \atom  { mmm }%
{%
    \ce{^{#2}_{#3}#1}%
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
\newcommand{\Uspace}{\;} % 物理单位的空格

\newcommand{\Ums}{\;\text{m}/\text{s}} % m/s
\newcommand{\Umcs}{\;\text{m}^3/\text{s}} % m^3/s （抽水量）
\newcommand{\Ucms}{\;\text{cm}/\text{s}} % cm/s
\newcommand{\Ucm}{\;\text{cm}} % cm
\newcommand{\Umsq}{\;\text{m}/\text{s}^2} % m/s^2
\newcommand{\Ucmsq}{\;\text{cm}/\text{s}^2} % cm/s^2
\newcommand{\Ukmh}{\;\text{km}/\text{h}} % km/h
\newcommand{\Us}{\;\text{s}} % s
\newcommand{\Usq}{\;\text{s}^2} % s^2
\newcommand{\Um}{\;\text{m}} % m
\newcommand{\Udm}{\;\text{dm}} % dm
\newcommand{\Umm}{\;\text{mm}} % mm
\newcommand{\Umum}{\;\mu\text{m}} % μm
\newcommand{\Umn}{\;\text{m}^{-1}} % m^{-1} （长度 m 的倒数）
\newcommand{\Umq}{\;\text{m}^2} % m^2
\newcommand{\Ucmq}{\;\text{cm}^2} % cm^2
\newcommand{\Ukgf}{\;\text{kgf}} % kgf
\newcommand{\Ukg}{\;\text{kg}} % kg
\newcommand{\Uua}{\;\text{u}} % u （原子质量单位）
\newcommand{\UN}{\;\text{N}} % N
\newcommand{\UNkg}{\;\text{N}/\text{kg}} % N/kg
\newcommand{\Udyn}{\;\text{dyn}} % dyn
\newcommand{\Ug}{\;\text{g}} % g
\newcommand{\UNmqkgq}{\;\text{N}\cdot\text{m}^2/\text{kg}^2} % N·m^2/kg^2 (万有引力常量 G 单位)
\newcommand{\Ukms}{\;\text{km}/\text{s}} % km/s
\newcommand{\Ukmsq}{\;\text{km}/\text{s}^2} % km/s^2
\newcommand{\UNm}{\;\text{N}\cdot\text{m}} % N·m （力矩）
\newcommand{\UNslashm}{\;\text{N}/\text{m}} % N/m
\newcommand{\UNmq}{\;\text{N}/\text{m}^2} % N/m^2
\newcommand{\UJ}{\;\text{J}} % J
\newcommand{\UL}{\;\text{L}} % L （容积单位，升）
\newcommand{\Uerg}{\;\text{erg}} % erg
\newcommand{\UW}{\;\text{W}} % W
\newcommand{\UJs}{\;\text{J}/\text{s}} % J/s
\newcommand{\UkW}{\;\text{kW}} % kW
\newcommand{\UHP}{\;\text{HP}} % HP （功率单位：马力，horsepower）
\newcommand{\Umc}{\;\text{m}^3} % m^3
\newcommand{\Umnc}{\;\text{m}^{-3}} % m^{-3}
\newcommand{\Udmc}{\;\text{dm}^3} % dm^3
\newcommand{\Ucmc}{\;\text{cm}^3} % cm^3
\newcommand{\Ummc}{\;\text{mm}^3} % mm^3
\newcommand{\Ummq}{\;\text{mm}^2} % mm^2
\newcommand{\UNs}{\;\text{N}\cdot\text{s}} % N·s
\newcommand{\Ukgms}{\;\text{kg}\cdot\text{m}/\text{s}} % kg·m/s
\newcommand{\Ukgmsq}{\;\text{kg}\cdot\text{m}/\text{s}^2} % kg·m/s^2
\newcommand{\Ukgs}{\;\text{kg}/\text{s}} % kg/s
\newcommand{\Ukgmc}{\;\text{kg}/\text{m}^3} % kg/m^3
\newcommand{\UWmq}{\;\text{W}/\text{m}^2} % W/m^2
\newcommand{\UdB}{\;\text{dB}} % dB
\newcommand{\Ucede}{\;{}^\circ\text{C}} % ℃ (celsius degree)
\newcommand{\Umol}{\;\text{mol}} % mol
\newcommand{\Umolnn}{\;\text{mol}^{-1}} % mol^{-1}
\newcommand{\Umcmol}{\;\text{m}^3/\text{mol}} % m^3/mol
\newcommand{\Ukgmol}{\;\text{kg}/\text{mol}} % kg/mol （摩尔质量单位，化学当量）
\newcommand{\Ucal}{\;\text{cal}} % 卡路里（卡，cal）热量的旧单位
\newcommand{\UJcal}{\;\text{J}/\text{cal}} % 热功当量单位
\newcommand{\UJkgcede}{\;\text{J}/(\text{kg}\cdot{}^\circ\text{C})} % 比热 J/(kg·℃)
\newcommand{\UJkgK}{\;\text{J}/(\text{kg}\cdot\text{K})} % 比热 J/(kg·K)
\newcommand{\UPa}{\;\text{Pa}} % Pa
\newcommand{\Uatm}{\;\text{atm}} % atm （压强单位，标准大气压）
\newcommand{\UmmHg}{\;\text{mmHg}} % mmHg （压强单位，毫米汞柱）
\newcommand{\UK}{\;\text{K}} % K （热力学温度）
\newcommand{\UJmolK}{\;\text{J}/(\text{mol}\cdot\text{K})} % J/(mol·K) （摩尔气体恒量 R 单位）
\newcommand{\UatmLmolK}{\;\text{atm}\cdot\text{L}/(\text{mol}\cdot\text{K})} % atm·L/(mol·K)
\newcommand{\UJkg}{\;\text{J}/\text{kg}} % J/kg （熔解热、汽化热）
\newcommand{\UkJkg}{\;\text{kJ}/\text{kg}} % kJ/kg （熔解热、汽化热）
\newcommand{\UC}{\;\text{C}} % C （电荷量）
\newcommand{\UNmqCq}{\;\text{N}\cdot\text{m}^2/\text{C}^2} % N·m^2/C^2 （静电力常量 k）
\newcommand{\UNC}{\;\text{N}/\text{C}} % N/C （电场强度）
\newcommand{\UV}{\;\text{V}} % V （电压）
\newcommand{\UJC}{\;\text{J}/\text{C}} % J/C （同电压）
\newcommand{\UeV}{\;\text{eV}} % eV （能量，电子伏特）
\newcommand{\UMeV}{\;\text{MeV}} % MeV （能量，兆电子伏特）
\newcommand{\Ue}{\;\text{e}} % e （元电荷）
\newcommand{\UVm}{\;\text{V}/\text{m}} % V/m （同电场强度）
\newcommand{\UF}{\;\text{F}} % F （电容）
\newcommand{\UCV}{\;\text{C}/\text{V}} % C/V （同电容）
\newcommand{\UuF}{\;\mu\text{F}} % uF （电容）
\newcommand{\UnF}{\;\text{nF}} % nF （电容）
\newcommand{\UpF}{\;\text{pF}} % pF （电容）
\newcommand{\UA}{\;\text{A}} % A （电流）
\newcommand{\UImA}{\;\text{mA}} % mA （电流）
\newcommand{\UuA}{\;\mu\text{A}} % μA （电流）
\newcommand{\UO}{\;\Omega} % Ω （电阻）
\newcommand{\UVslashA}{\;\text{V}/\text{A}} % V/A （同电阻）
\newcommand{\UHs}{\;\text{H}/\text{s}} % H/s （同电阻）
\newcommand{\UsF}{\;\text{s}/\text{F}} % s/F （同电阻）
\newcommand{\UsVC}{\;\text{s}\cdot\text{V}/\text{C}} % s·V/C （同电阻）
\newcommand{\UkO}{\;\text{k}\Omega} % kΩ （电阻）
\newcommand{\UMO}{\;\text{M}\Omega} % MΩ （电阻）
\newcommand{\UOm}{\;\Omega\cdot\text{m}} % Ω·m （电阻率）
\newcommand{\UkgC}{\;\text{kg}/\text{C}} % kg/C （电化当量）
\newcommand{\UCmol}{\;\text{C}/\text{mol}} % C/mol （法拉第恒量 F）
\newcommand{\Umoln}{\;\text{mol}^{-1}} % mol^{-1} （阿伏伽德罗常数 N）
\newcommand{\UT}{\;\text{T}} % T （磁感应强度，特斯拉）
\newcommand{\UAm}{\;\text{A}\cdot\text{m}} % A·m 
\newcommand{\UWb}{\;\text{Wb}} % Wb （磁通量）
\newcommand{\UTmq}{\;\text{T}\cdot\text{m}^2} % T·m^2 （同磁通量）
\newcommand{\UWbmq}{\;\text{Wb}/\text{m}^2} % Wb/m^2 （磁通密度，同磁感应强度）
\newcommand{\UNAq}{\;\text{N}/\text{A}^2} % N/A^2 （直导线电流产生磁场的比例系数 B=kI/r）
\newcommand{\UAs}{\;\text{A}\cdot\text{s}} % A·s （同电荷单位库仑）
\newcommand{\UCkg}{\;\text{C}/\text{kg}} % C/kg （电荷与质量之比，荷质比）
\newcommand{\UWbs}{\;\text{Wb}/\text{s}} % Wb/s （同电压） 
\newcommand{\UH}{\;\text{H}} % H （自感系数） 
\newcommand{\UVsA}{\;\text{V}\cdot\text{s}/\text{A}} % V·s/A （同自感系数） 
\newcommand{\UmH}{\;\text{mH}} % mH （自感系数） 
\newcommand{\UuH}{\;\mu\text{H}} % μH （自感系数） 
\newcommand{\UAslashs}{\;\text{A}/\text{s}} % A/s （电流强度变化率）
\newcommand{\UOs}{\;\Omega\cdot\text{s}} % Ω·s （同自感系数）
\newcommand{\UHz}{\;\text{Hz}} % Hz （频率）
\newcommand{\UkHz}{\;\text{kHz}} % kHz （频率）
\newcommand{\UMHz}{\;\text{MHz}} % MHz （频率）
\newcommand{\UAi}{\;\text{\AA}} % Å（长度，埃）
\newcommand{\UJcdots}{\;\text{J}\cdot\text{s}} % J·s（普朗克常数 h 单位）
\newcommand{\Umolnnn}{\;\text{mol}^{-1}} % mol^{-1}（长度，埃）

%取 alone 首字母
\newcommand{\UmsA}{\text{m}/\text{s}} % m/s
\newcommand{\UmcsA}{\text{m}^3/\text{s}} % m^3/s （抽水量）
\newcommand{\UcmsA}{\text{cm}/\text{s}} % cm/s
\newcommand{\UcmA}{\text{cm}} % cm
\newcommand{\UmsqA}{\text{m}/\text{s}^2} % m/s^2
\newcommand{\UcmsqA}{\text{cm}/\text{s}^2} % cm/s^2
\newcommand{\UkmhA}{\text{km}/\text{h}} % km/h
\newcommand{\UsA}{\text{s}} % s
\newcommand{\UsqA}{\text{s}^2} % s^2
\newcommand{\UmA}{\text{m}} % m
\newcommand{\UdmA}{\text{dm}} % dm
\newcommand{\UmmA}{\text{mm}} % mm
\newcommand{\UmumA}{\mu\text{m}} % μm
\newcommand{\UmnA}{\text{m}^{-1}} % m^{-1} （长度 m 的倒数）
\newcommand{\UmqA}{\text{m}^2} % m^2
\newcommand{\UcmqA}{\text{cm}^2} % cm^2
\newcommand{\UkgfA}{\text{kgf}} % kgf
\newcommand{\UkgA}{\text{kg}} % kg
\newcommand{\UuaA}{\text{u}} % u （原子质量单位）
\newcommand{\UNA}{\text{N}} % N
\newcommand{\UNkgA}{\text{N}/\text{kg}} % N/kg
\newcommand{\UdynA}{\text{dyn}} % dyn
\newcommand{\UgA}{\text{g}} % g
\newcommand{\UNmqkgqA}{\text{N}\cdot\text{m}^2/\text{kg}^2} % N·m^2/kg^2 (万有引力常量 G 单位)
\newcommand{\UkmsA}{\text{km}/\text{s}} % km/s
\newcommand{\UkmsqA}{\text{km}/\text{s}^2} % km/s^2
\newcommand{\UNmA}{\text{N}\cdot\text{m}} % N·m （力矩）
\newcommand{\UNslashmA}{\text{N}/\text{m}} % N/m
\newcommand{\UNmqA}{\text{N}/\text{m}^2} % N/m^2
\newcommand{\UJA}{\text{J}} % J
\newcommand{\ULA}{\text{L}} % L （容积单位，升）
\newcommand{\UergA}{\text{erg}} % erg
\newcommand{\UWA}{\text{W}} % W
\newcommand{\UJsA}{\text{J}/\text{s}} % J/s
\newcommand{\UkWA}{\text{kW}} % kW
\newcommand{\UHPA}{\text{HP}} % HP （功率单位：马力，horsepower）
\newcommand{\UmcA}{\text{m}^3} % m^3
\newcommand{\UmncA}{\text{m}^{-3}} % m^{-3}
\newcommand{\UdmcA}{\text{dm}^3} % dm^3
\newcommand{\UcmcA}{\text{cm}^3} % cm^3
\newcommand{\UmmcA}{\text{mm}^3} % mm^3
\newcommand{\UmmqA}{\text{mm}^2} % mm^2
\newcommand{\UNsA}{\text{N}\cdot\text{s}} % N·s
\newcommand{\UkgmsA}{\text{kg}\cdot\text{m}/\text{s}} % kg·m/s
\newcommand{\UkgmsqA}{\text{kg}\cdot\text{m}/\text{s}^2} % kg·m/s^2
\newcommand{\UkgsA}{\text{kg}/\text{s}} % kg/s
\newcommand{\UkgmcA}{\text{kg}/\text{m}^3} % kg/m^3
\newcommand{\UWmqA}{\text{W}/\text{m}^2} % W/m^2
\newcommand{\UdBA}{\text{dB}} % dB
\newcommand{\UcedeA}{{}^\circ\text{C}} % ℃ (celsius degree)
\newcommand{\UmolA}{\text{mol}} % mol
\newcommand{\UmolnnA}{\text{mol}^{-1}} % mol^{-1}
\newcommand{\UmcmolA}{\text{m}^3/\text{mol}} % m^3/mol
\newcommand{\UkgmolA}{\text{kg}/\text{mol}} % kg/mol （摩尔质量单位，化学当量）
\newcommand{\UcalA}{\text{cal}} % 卡路里（卡，cal）热量的旧单位
\newcommand{\UJcalA}{\text{J}/\text{cal}} % 热功当量单位
\newcommand{\UJkgcedeA}{\text{J}/(\text{kg}\cdot{}^\circ\text{C})} % 比热 J/(kg·℃)
\newcommand{\UJkgKA}{\text{J}/(\text{kg}\cdot\text{K})} % 比热 J/(kg·K)
\newcommand{\UPaA}{\text{Pa}} % Pa
\newcommand{\UatmA}{\text{atm}} % atm （压强单位，标准大气压）
\newcommand{\UmmHgA}{\text{mmHg}} % mmHg （压强单位，毫米汞柱）
\newcommand{\UKA}{\text{K}} % K （热力学温度）
\newcommand{\UJmolKA}{\text{J}/(\text{mol}\cdot\text{K})} % J/(mol·K) （摩尔气体恒量 R 单位）
\newcommand{\UatmLmolKA}{\text{atm}\cdot\text{L}/(\text{mol}\cdot\text{K})} % atm·L/(mol·K)
\newcommand{\UJkgA}{\text{J}/\text{kg}} % J/kg （熔解热、汽化热）
\newcommand{\UkJkgA}{\text{kJ}/\text{kg}} % kJ/kg （熔解热、汽化热）
\newcommand{\UCA}{\text{C}} % C （电荷量）
\newcommand{\UNmqCqA}{\text{N}\cdot\text{m}^2/\text{C}^2} % N·m^2/C^2 （静电力常量 k）
\newcommand{\UNCA}{\text{N}/\text{C}} % N/C （电场强度）
\newcommand{\UVA}{\text{V}} % V （电压）
\newcommand{\UJCA}{\text{J}/\text{C}} % J/C （同电压）
\newcommand{\UeVA}{\text{eV}} % eV （能量，电子伏特）
\newcommand{\UMeVA}{\text{MeV}} % MeV （能量，兆电子伏特）
\newcommand{\UeA}{\text{e}} % e （元电荷）
\newcommand{\UVmA}{\text{V}/\text{m}} % V/m （同电场强度）
\newcommand{\UFA}{\text{F}} % F （电容）
\newcommand{\UCVA}{\text{C}/\text{V}} % C/V （同电容）
\newcommand{\UuFA}{\mu\text{F}} % uF （电容）
\newcommand{\UnFA}{\text{nF}} % nF （电容）
\newcommand{\UpFA}{\text{pF}} % pF （电容）
\newcommand{\UAA}{\text{A}} % A （电流）
\newcommand{\UImAA}{\text{mA}} % mA （电流）
\newcommand{\UuAA}{\mu\text{A}} % μA （电流）
\newcommand{\UOA}{\Omega} % Ω （电阻）
\newcommand{\UVslashAA}{\text{V}/\text{A}} % V/A （同电阻）
\newcommand{\UHsA}{\text{H}/\text{s}} % H/s （同电阻）
\newcommand{\UsFA}{\text{s}/\text{F}} % s/F （同电阻）
\newcommand{\UsVCA}{\text{s}\cdot\text{V}/\text{C}} % s·V/C （同电阻）
\newcommand{\UkOA}{\text{k}\Omega} % kΩ （电阻）
\newcommand{\UMOA}{\text{M}\Omega} % MΩ （电阻）
\newcommand{\UOmA}{\Omega\cdot\text{m}} % Ω·m （电阻率）
\newcommand{\UkgCA}{\text{kg}/\text{C}} % kg/C （电化当量）
\newcommand{\UCmolA}{\text{C}/\text{mol}} % C/mol （法拉第恒量 F）
\newcommand{\UmolnA}{\text{mol}^{-1}} % mol^{-1} （阿伏伽德罗常数 N）
\newcommand{\UTA}{\text{T}} % T （磁感应强度，特斯拉）
\newcommand{\UAmA}{\text{A}\cdot\text{m}} % A·m 
\newcommand{\UWbA}{\text{Wb}} % Wb （磁通量）
\newcommand{\UTmqA}{\text{T}\cdot\text{m}^2} % T·m^2 （同磁通量）
\newcommand{\UWbmqA}{\text{Wb}/\text{m}^2} % Wb/m^2 （磁通密度，同磁感应强度）
\newcommand{\UNAqA}{\text{N}/\text{A}^2} % N/A^2 （直导线电流产生磁场的比例系数 B=kI/r）
\newcommand{\UAsA}{\text{A}\cdot\text{s}} % A·s （同电荷单位库仑）
\newcommand{\UCkgA}{\text{C}/\text{kg}} % C/kg （电荷与质量之比，荷质比）
\newcommand{\UWbsA}{\text{Wb}/\text{s}} % Wb/s （同电压） 
\newcommand{\UHA}{\text{H}} % H （自感系数） 
\newcommand{\UVsAA}{\text{V}\cdot\text{s}/\text{A}} % V·s/A （同自感系数） 
\newcommand{\UmHA}{\text{mH}} % mH （自感系数） 
\newcommand{\UuHA}{\mu\text{H}} % μH （自感系数） 
\newcommand{\UAslashsA}{\text{A}/\text{s}} % A/s （电流强度变化率）
\newcommand{\UOsA}{\Omega\cdot\text{s}} % Ω·s （同自感系数）
\newcommand{\UHzA}{\text{Hz}} % Hz （频率）
\newcommand{\UkHzA}{\text{kHz}} % kHz （频率）
\newcommand{\UMHzA}{\text{MHz}} % MHz （频率）
\newcommand{\UAiA}{\text{\AA}} % Å（长度，埃）
\newcommand{\UJcdotsA}{\text{J}\cdot\text{s}} % J·s（普朗克常数 h 单位）

\RequirePackage{tkz-euclide}


\RequirePackage{subcaption}
\RequirePackage{zhnumber}

\DeclareCaptionFormat{MySubfigFormat}{\zihao{-5}{\heiti #1#2}\space#3 \par}
\captionsetup[subfigure]{format=MySubfigFormat,justification=centering,labelformat=simple}
\renewcommand{\thesubfigure}{\zhtiangan{\arabic{subfigure}}}




