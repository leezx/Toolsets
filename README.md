# singleCellTools
my personal single cell RNA-seq analysis script R package

怎么才能随时使用、学习和调试别人的代码，在充分理解之后，修改保存为自己的代码？（如果这项技能点满了，那在生信领域将大有可为！！！）

使用和调试分开，所有代码都是想通的，核心的导向是数据；不要害怕不同工具之间的隔阂，很有可能一个函数就可以连通。

# script
prepare_smart_seq_data

prepare_10x_data

filtering_matrix

normalizing_matrix

batch_effect_correction



feature_selection

Highly_variable_genes_selection



dimension_reduction_by_PCA

dimension_reduction_by_diffusionMap



data_transform_matrix_to_CellDataSet

data_transform_matrix_to_SingleCellExperiment

data_transform_matrix_to_seurat

data_transform_CellDataSet_to_SingleCellExperiment

data_transform_SingleCellExperiment_to_CellDataSet



clustering_by_SC3

clustering_by_SIMLR

clustering_by_seurat

clustering_by_monocle

marker_identification_by_SC3

pseudotime_by_monocle1

pseudotime_by_monocle2

pseudotime_by_SLICER

module_identification_by_WGCNA

module_identification_by_MSIC



DEG_by_scde

DEG_by_edgeR

scoring_model_by_LR



dataset_human_TFs

dataset_mouse_TFs

dataset_human_Y_chromsome_genes

dataset_mouse_Y_chromsome_genes

dataset_human_to_mouse_genes

dataset_cell_cycle_genes

dataset_cell_cycle_phase_genes

dataset_migration_genes

dataset_ENS_markers



show_notes

tools_study_test



plotting_boxplot

plotting_violin_plot

plotting_barplot

plotting_volcano_plot

plotting_heatmap



Plots_collection_001

Plots_collection_00X

(Source code from CNS paper)



Algorithms_collection_001

Algorithms_collection_00X




# Learning material

[R packages](http://r-pkgs.had.co.nz/)

Coursera - [Building R Packages](https://www.coursera.org/learn/r-packages/home/welcome)

From course:

- [Writing R Extensions](https://cran.r-project.org/doc/manuals/r-release/R-exts.html)
- [Building R Packages Pre-Flight Check List](https://github.com/rdpeng/daprocedures/blob/master/lists/Rpackage_preflight.md)
- [devtools-cheatsheet.pdf](https://www.rstudio.com/wp-content/uploads/2015/06/devtools-cheatsheet.pdf)
- [Common roxygen2 tags](https://bookdown.org/rdpeng/RProgDA/documentation.html#common-roxygen2-tags)
- [testthat: Get Started with Testing](https://journal.r-project.org/archive/2011-1/RJournal_2011-1_Wickham.pdf)

[Building packages for Bioconductor](https://bioconductor.org/developers/how-to/buildingPackagesForBioc/)

[The S4 object system](http://adv-r.had.co.nz/S4.html)

Learn from monocle, seurat, etc.

[手把手教你如何进行 代码版本控制](https://blog.csdn.net/MR_LP/article/details/64921008)



## 以规范的R包标准来写这个包

- 将单细胞的分析按功能分类（smart-seq and 10x，clustering，pseudotime，绘图模块）；
- 标准化输入输出；
- 写好使用文档；



# R的语法技巧

1. subset(diff_test_res, qval < 0.01)，之前取子集的方法太笨拙了；
2. 





# Q&A

1. Q: 如何将别人的R包函数直接添加到我自己的包里？

A: 如果是纯函数，那直接copy即可；但是现在的大多数对象集成的，直接copy是不能使用的，要提前把class给导入。今天我就遇到了一个问题，直接将R文件夹里的函数文件copy，无法build，显示某个class没有define，搜索了好久没有解决，最终发现是Description文件的问题（原包可以正常编译，一个一个文件的删除，测试出来的），里面有个Depends，它不是写得好玩的，它决定了你编译前会import哪些包（随便移除一个就测试出来了）。NAMESPACE不需要手动编辑，roxygen会自动生成。

2. Q: R中开发同一个包时，如何多版本共存，一起调试？

A: 同名的函数会覆盖，所以只能显式的使用域名。

3. Q: 已经有很多降维的方法了，还需要特征选择吗？

A: 不知道









