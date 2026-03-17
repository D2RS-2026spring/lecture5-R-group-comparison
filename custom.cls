% ==============================
% custom.cls
% 高教社风格中文书籍类
% ==============================

\ProvidesClass{custom}[2025/12/17 自定义书籍类]

% ------------------------------------------------
% 基类：ctexbook
% ------------------------------------------------
\LoadClass[UTF8,zihao=-4]{ctexbook}


% =================================================
% 目录与编号深度控制
% =================================================
\setcounter{tocdepth}{3}     % 目录显示到 subsection（三级标题）
\setcounter{secnumdepth}{5}  % 编号深度到 paragraph（五级标题）


% =================================================
% 中文章节与标题样式
% =================================================
\ctexset{
  % =================================================
  % 中文固定名称
  % =================================================
  contentsname   = {目录},
  listfigurename = {插图目录},
  listtablename  = {表格目录},
  figurename     = {图},
  tablename      = {表},
  abstractname   = {摘要},
  bibname        = {参考文献},
  indexname      = {索引},
  appendixname   = {附录},
  % ------------------------------
  % 一级标题：章（第一章）
  % ------------------------------
  chapter = {
    name = {第,章},
    number = \chinese{chapter},
    format = \centering\heiti\zihao{-1}, % 小一号字号，黑体
    aftername = \quad,
    beforeskip = 12bp,
    afterskip  = 6bp
  },
  % ------------------------------
  % 二级标题：节（第一节）——居中
  % ------------------------------
  section = {
    name = {第,节},
    number = \chinese{section},
    format = \centering\heiti\zihao{-2}, % 小二字号，黑体
    aftername = \quad,
    beforeskip = 10bp,
    afterskip  = 4bp
  },
  % ------------------------------
  % 三级标题：一、二、
  % 目录中需要顿号
  % ------------------------------
  subsection = {
    name = {,、},
    number = \chinese{subsection},
    format = \heiti\zihao{3},  % 三号字号，黑体
    aftername = {},
    beforeskip = 8bp,
    afterskip  = 2bp
  },
  % ------------------------------
  % 四级标题：（一）（二）
  % ------------------------------
  subsubsection = {
    name = {（,）} ,
    number = \chinese{subsubsection},
    format = \bfseries\zihao{-4},
    aftername = {},
    beforeskip = 6bp,
    afterskip  = 0bp
  },
  % ------------------------------
  % 五级标题：1. 2.
  % 不换行，粗体
  % ------------------------------
  paragraph = {
    name = {,.},
    number = \arabic{paragraph},
    format = \bfseries\zihao{-4},
    aftername = \quad,
    runin = true,
    beforeskip = 4bp,
    afterskip  = 0bp
  },
  % ------------------------------
  % 六级标题：（1）（2）
  % 不换行，粗体
  % ------------------------------
  subparagraph = {
    name = {,},
    number = {（\arabic{subparagraph}）},
    format = \bfseries\zihao{-4},
    runin = true,
    beforeskip = 2bp,
    afterskip  = 0bp
  },
}