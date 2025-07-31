%%% % -*- coding: utf-8 -*-
%%% ----------------------------------------------------------------------------
%%% retypeset: 高中物理甲种本重排
%%% Copyright : 2021-2025 (c) <ylxdxx@qq.com>
%%% Repository: 
%%% License   : 「随君所想，成君所愿」
%%% ----------------------------------------------------------------------------


%格式声明
\NeedsTeXFormat{LaTeX2e}[2021-11-15]

\RequirePackage{expl3}


%This is a special version of the standard \ProvidesPackage macro, 
%which will automatically turn on LaTeX3 programming syntax and 
%more importantly turn it off at the end of the package. 
%It also deals properly with nested package loading, and
%so is the recommended way to use LaTeX3 syntax inside LaTeX2e packages.
\ProvidesExplPackage{retypeset} % Package name
{2025-07-31} % Release date
{0.2} % Release version
{高中物理甲种本重排模板} % Description 


%
%变量
%
\int_new:N  \l_RT_book_number_int %需要编译生成的册数（共三册）
\bool_new:N \l_RT_hyperlink_color_bool %是否对超链接添加颜色
\tl_new:N   \l_RT_hyperlink_color_tl %超链接颜色
%
%
%

\msg_new:nnn { RT_Msg_Book_number } { number_error }
{
  ERROR: ~ The ~ number ~ of ~ books ~ is ~ wrong, ~ the ~ number ~ can ~ only ~ be ~ 1, ~ 2, ~ 3.
}

%
%
%

\keys_define:nn {retypeset}
{
    book_number .int_set:N = \l_RT_book_number_int,
    hyperlink_color_is .bool_set:N = \l_RT_hyperlink_color_bool,
    hyperlink_color .tl_set:N  = \l_RT_hyperlink_color_tl,
    
    % 初始值
    book_number .initial:n = {1},
    hyperlink_color_is .initial:n = {true},
    hyperlink_color .initial:n = {blue},
}
\ProcessKeyOptions[retypeset] %处理传入参数

%
%
%


\LoadClass[UTF8, a4paper, openright, fontset=windows, zihao=-4,]{ctexbook}

\RequirePackage{emptypage} %This package suppresses page numbers and headings from appearing on empty pages.

\RequirePackage[top=2.5cm,bottom=2.5cm,left=2.8cm,right=2.2cm]{geometry} %页边距
\RequirePackage[dvipsnames]{xcolor}
%超链接
\bool_if:NTF {\l_RT_hyperlink_color_bool}
{
\RequirePackage[bookmarksnumbered,draft=false,CJKbookmarks=true,
                colorlinks=true,
                linkcolor=\tl_use:N \l_RT_hyperlink_color_tl,
                citecolor=\tl_use:N \l_RT_hyperlink_color_tl,
                urlcolor=\tl_use:N \l_RT_hyperlink_color_tl,
                anchorcolor=\tl_use:N \l_RT_hyperlink_color_tl,
                filecolor=\tl_use:N \l_RT_hyperlink_color_tl,
                hyperindex]{hyperref}
}
{
\RequirePackage[bookmarksnumbered,draft=false,CJKbookmarks=true,
                colorlinks=false,hyperindex,hidelinks]{hyperref}
}


\RequirePackage{amsmath,amsfonts,mathrsfs,amssymb}
\RequirePackage{graphicx}
\RequirePackage[font=bf,labelfont=bf,labelsep=quad]{caption}
\RequirePackage{tikz}
\RequirePackage{tabularray} %现代表格环境
\UseTblrLibrary{booktabs} %三线表用
\UseTblrLibrary{diagbox} %表头用
\RequirePackage{subcaption}
\RequirePackage{zhnumber}
\RequirePackage{bm}
\RequirePackage{mhchem} %核素、同位素、化学式
\RequirePackage{mathtools}
\RequirePackage{yhmath} %圆弧
\RequirePackage{physics}
\RequirePackage{xeCJKfntef} %中文的波浪线、加点、删除线等


% 修改脚注的编号为加圈样式，并且各页单独编号
\RequirePackage{pifont}
\RequirePackage[perpage,symbol*]{footmisc}
\DefineFNsymbols{circled}{{\ding{192}}{\ding{193}}{\ding{194}}
    {\ding{195}}{\ding{196}}{\ding{197}}{\ding{198}}{\ding{199}}{\ding{200}}{\ding{201}}}
\setfnsymbol{circled}


\RequirePackage{ntheorem}
\theoremseparator{\;}


\theoremstyle{plain}
\theoremheaderfont{\normalfont\bfseries} 
\theorembodyfont{\normalfont}


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

\renewcommand{\le}{\leqslant}
\renewcommand{\ge}{\geqslant}


\setcounter{tocdepth}{1}
\setcounter{secnumdepth}{3}

\setlength{\abovecaptionskip}{0.cm}
\setlength{\belowcaptionskip}{-0.cm}

\ctexset {
    section = {
        name = {第,节},
        number = \chinese{section}},
    subsection = {
        name = {,、\hspace{-1em}},
        number = \chinese{subsection}
    },
    subsubsection = {
        name = {（,）\hspace{-1em}},
        number = \chinese{subsubsection},
    }
}


\DeclareCaptionFormat{MySubfigFormat}{\zihao{-5}{\heiti #1#2}\space#3 \par}
\captionsetup{justification=centering}
\captionsetup[subfigure]{format=MySubfigFormat,justification=centering,labelformat=simple}
\renewcommand{\thesubfigure}{\zhtiangan{\arabic{subfigure}}}


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


\NewDocumentCommand \NoteUnderWave  { m }%
{%
    %原文加波浪线部分
    \CJKunderwave{#1}%
}

\NewDocumentCommand \NoteBold  { m }%
{%
    %原文加粗部分
    %考虑到即有加粗又有波浪线的情况
    %这里当前只能使用 \CJKunderdot 配合才能实现粗体效果
    %若用其它的方面有两个弊端：1. 多个字只能加粗一个字。 2. 不能自动换行
    \CJKunderdot[textformat=\bfseries,symbol=\space,depth=0em,boxdepth=0pt,sep=0pt]%
    {#1}
}

\NewDocumentCommand \atom  { mmm }%
{%
    \ce{^{#2}_{#3}#1}%
}



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


\NewDocumentCommand \BookContent { mmm }
{
    \int_case:nnF \l_RT_book_number_int
    {
        {1} %第一册
        {%
            %封面内容
            \title{\Huge\bfseries 高中物理~甲种本\\ 第一册\\\vspace*{1cm} {\zihao{2}\songti 重排版}\\\vspace*{2cm} }
            \author{\Large 张同恂 \and \Large 方玉珍 \and \Large 马淑美}
            \date{\Large 1983年11月 \\ \rule{0em}{0em} \\ \rule{0em}{0em} \\ \includegraphics[width=85mm]{fig/A/cover.pdf}\setcounter{page}{-1}}
            #1
        }
        {2} %第二册
        {
            %封面内容
            \title{\Huge\bfseries 高中物理~甲种本\\ 第二册\\\vspace*{1cm} {\zihao{2}\songti 重排版}\\\vspace*{2cm}}
            \author{\Large 张同恂 \and \Large 方玉珍 \and \Large 马淑美 \and \Large 郭连壁 \and \Large 李福利 }
            \date{\Large 1984年7月 \\ \rule{0em}{0em} \\ \rule{0em}{0em} \\ \includegraphics[scale=1.2]{fig/B/cover.pdf}\setcounter{page}{-1}}
            #2
        }
        {3} %第三册
        {
            %封面内容
            \title{\Huge\bfseries 高中物理~甲种本\\ 第三册\\\vspace*{1cm} {\zihao{2}\songti 重排版}\\\vspace*{2cm}}
            \author{\Large 张同恂 \and \Large 方玉珍 \and \Large 马淑美}
            \date{\Large 1985年11月 \\ \rule{0em}{0em} \\ \rule{0em}{0em} \\ \includegraphics[scale=1.8]{fig/C/cover.pdf}\setcounter{page}{-1}}
            #3
        }
    }
    {
        \msg_error:nn { RT_Msg_Book_number } { number_error }
    }
}
