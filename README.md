# Lecture 5: R Group Comparison

本书是「数据驱动的可重复性研究」系列课程的第五讲，以 **R 语言分组比较** 为核心主题，系统介绍从 R 语言基础到分组数据统计分析的完整知识体系。

## 为什么要学习分组数据统计分析？

在科学研究中，**分组比较** 是最基本也是最常用的分析范式——无论是比较实验组与对照组的差异、评估不同处理条件的效果，还是探索多个因素之间的交互作用，都离不开分组数据的统计分析。然而，面对不同的数据特征（样本量、分布、变量数量），研究者需要在参数方法与非参数方法之间做出合理选择，并掌握从单变量到多变量的完整分析体系。

本书正是为此而设计：帮助读者建立系统的分组比较方法论，从假设检验的基本流程出发，逐步掌握 t 检验、ANOVA、Wilcoxon 检验、PERMANOVA 等核心方法，并通过真实数据实战，学会用 R 语言完成从数据处理到发表级图表的全流程。

## 学习目标

通过本书的学习，你将能够：

1. 掌握 R 语言的基本数据类型、数据结构和核心软件包的使用
2. 理解假设检验的标准流程，并能根据数据特征选择合适的统计方法
3. 使用参数方法（t 检验、ANOVA）和非参数方法（Wilcoxon 检验、Kruskal-Wallis 检验）进行分组比较
4. 掌握多变量分析方法（MANOVA、RDA、CCA、PERMANOVA、Mantel 检验）的基本原理与 R 实现
5. 使用 `ggplot2`、`ggpubr` 等工具制作发表级图表
6. 从原始数据出发，通过 R 代码实现数据处理、统计分析和可视化的全流程自动化

## 适用读者

- 具有基本统计学概念（如均值、标准差、p 值）的研究生和科研人员
- 希望从 Excel/SPSS 过渡到 R 语言进行数据分析的初学者
- 需要进行分组比较和多变量分析的生物学、农学、生态学等领域研究者

## 章节结构

本书共分为四个主要章节，按照「基础→方法→实战」的逻辑递进组织：

| 章节 | 文件 | 内容简介 |
|------|------|----------|
| R 语言入门 | `r-basic.qmd` | R 语言的基本概念、数据结构和核心软件包 |
| 经典数据集分析 | `datasets-in-r.qmd` | 通过 R 自带数据集演示因子设计、ANOVA、混合效应模型等分析方法 |
| 分组数据分析方法 | `grouped-data-analysis.qmd` | 系统梳理从简单到复杂的分组比较统计方法体系 |
| 分组数据分析实战 | `grouped-data-analysis-in-action.qmd` | 以真实论文数据为例，展示完整的可重复性研究流程 |

## 快速开始

### 1. 克隆仓库

```bash
git clone git@github.com:D2RS-2026spring/lecture5-r-group-comparison.git
cd lecture5-r-group-comparison
```

### 2. 环境要求

- R 版本 ≥ 4.1.0
- [Quarto](https://quarto.org/)（用于编译书籍）
- [Positron](https://positron.posit.co/)（推荐的 IDE）

> **关于 Positron**：Positron 是 Posit 公司（原 RStudio）推出的新一代数据科学 IDE，基于 VS Code 架构构建，原生支持 R 和 Python。相比传统的 RStudio，Positron 提供了更现代的编辑体验、更好的多语言支持和更强大的扩展生态。本项目推荐使用 Positron 作为开发环境——用 Positron 打开本项目后，`renv` 会自动识别并恢复依赖环境，Quarto 文档也可以直接预览和渲染。当然，你也可以使用 RStudio 或其他已配置好 Quarto 引擎的 IDE。

### 3. 安装依赖

**方式一：使用 `renv`（推荐）**

```r
renv::restore()
```

> 使用 Positron 第一次打开本项目时，`renv` 会自动尝试创建可重复的本地分析环境。

**方式二：手动安装**

缺少哪个包就装哪个。

```r
install.packages("pak")  # 推荐使用 pak 包安装
pak::pak(c("tidyverse", "ggpubr", "vegan", "nlme",
                    "car", "dunn.test", "pheatmap", "cowplot",
                    "corrplot", "kableExtra", "agricolae"))
```

### 4. 编译书籍

```bash
quarto render --to html
```

> 运行 `quarto render`（不指定格式）将同时生成 HTML 和 PDF。因 PDF 渲染配置容易出问题，推荐先生成 HTML 文档。

编译完成后，在 `_book/` 目录下查看生成的 HTML 文件。

## 项目结构

```
.
├── index.qmd                              # 前言
├── summary.qmd                            # 简介
├── r-basic.qmd                            # R 语言入门
├── datasets-in-r.qmd                      # 经典数据集分析
├── grouped-data-analysis.qmd              # 分组数据分析方法
├── grouped-data-analysis-in-action.qmd    # 分组数据分析实战
├── references.qmd                         # 参考文献
├── _quarto.yml                            # Quarto 配置文件
├── data/                                  # 数据文件
├── renv/                                  # renv 环境
├── renv.lock                              # renv 锁文件
└── _book/                                 # 编译输出目录
```

## 作者

**Chun-Hui Gao**
