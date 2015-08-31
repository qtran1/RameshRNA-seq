# Below is your R command history : 
InitDataObjects("conc", "stat", FALSE)
Read.TextData("Metabolomic_WAT.csv", "colu", "disc");
SanityCheckData();
RemoveMissingPercent(percent=0.5)
ImputeVar(method="knn")
IsSmallSmplSize();
FilterVariable("none")
Normalization("MedianNorm", "LogNorm", "RangeNorm", "201", "F", ratio=FALSE, ratioNum=20)
PlotPCAPairSummary("pca_pair_0_", "png", 72, width=NA, 5)
PlotPCA2DScore("pca_score2d_0_", "png", 72, width=NA, 1,2,0.95,1,0)
PlotPCA2DScore("pca_score2d_1_", "png", 72, width=NA, 1,3,0.95,1,0)
PLSR.Anal()
PlotPLS2DScore("pls_score2d_0_", "png", 72, width=NA, 1,2,0.95,1,0)
PlotPLSLoading("pls_loading_0_", "png", 72, width=NA, 1, 2,"scatter", 1);
GetMinGroupSize();
PLSDA.CV("L",4, "Q2")
PlotPLS.Imp("pls_imp_0_", "png", 72, width=NA, "vip", "Comp. 1", 15,FALSE)
GetMinGroupSize();
PlotHCTree("tree_0_", "png", 72, width=NA, "euclidean", "ward")
PlotHeatMap("heatmap_0_", "png", 72, width=NA, "euclidean", "ward","bwm", "overview", T, T, NA, T)
PlotHeatMap("heatmap_1_", "png", 72, width=NA, "euclidean", "ward","bwm", "detail", F, T, NA, T)
SaveTransformedData()
