\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oucart}[2015/05/20 OUC Undergraduate Thesis Template]

\LoadClass[11pt,a4paper]{article}

\newif\iflangcn
\newif\iflangen

\DeclareOption{cn}{\langcntrue}
\DeclareOption{en}{\langentrue}
\ProcessOptions\relax

\RequirePackage{ctex}
\RequirePackage{CJKutf8}
\setCJKmainfont{WenQuanYi Zen Hei}
\setCJKsansfont{WenQuanYi Micro Hei}
\setCJKmonofont{WenQuanYi Micro Hei Mono}

\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{ulem}

\RequirePackage{geometry}
\linespread{1.667}

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\RequirePackage{assets/cover}
\RequirePackage{assets/abstractkeywords}

% ``目录'', ``参考文献''样式
\iflangcn
\renewcommand{\contentsname}{\centerline{\zihao{3}{\heiti{目$\qquad$录}}}}
\renewcommand{\refname}{\centerline{参考文献}}
\fi
\iflangen
\renewcommand{\contentsname}{\centerline{\zihao{3}{\heiti{Contents}}}}
\renewcommand{\refname}{\centerline{References}}
\fi

% 调整页边距
\geometry{top=1.2in,bottom=1.2in,left=1.2in,right=1in} 

\makeatletter

% 修改引用标记为上角标
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}

% 定义基本信息
\newcommand*{\entitle}[1]{
  \def\@entitle{#1}
}
\newcommand*{\advisor}[1]{
  \def\@advisor{#1}
}
\newcommand*{\studentid}[1]{
  \def\@studentid{#1}
}
\newcommand*{\department}[2]{
  \def\@college{#1}
  \def\@department{#2}
}

\lhead{}
\rhead{}
\chead{\small{\@title}} % 页眉

\makeatother

% 修改标题样式
\titleformat{\section}
            {\zihao{3}\heiti\raggedright}
            {}{0em}
            {}
\titleformat{\subsection}
            {\zihao{4}\heiti\raggedright}
            {}{0em}
            {}
\titleformat{\subsubsection}
            {\zihao{4}\heiti\raggedright}
            {}{0em}
            {}

% 修改目录样式
\titlecontents{section}
              [10mm]
              {\zihao{4}\songti}
              {\contentslabel{1em}}
              {}
              {\titlerule*{.}\contentspage}
\titlecontents{subsection}
              [17mm]
              {\zihao{-4}\songti}
              {\contentslabel{2em}}
              {}
              {\titlerule*{.}\contentspage}
\titlecontents{subsubsection}
              [25mm]
              {\zihao{-4}\songti}
              {\contentslabel{3em}}
              {}
              {\titlerule*{.}\contentspage}
