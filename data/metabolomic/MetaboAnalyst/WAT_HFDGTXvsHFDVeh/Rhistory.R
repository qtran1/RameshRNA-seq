# Below is your R command history : 
InitDataObjects("conc", "stat", FALSE)
Read.TextData("Metabolomic_WAT_HFDTx_vs_HFDVeh_MSEA.csv", "colu", "disc");
SanityCheckData();
RemoveMissingPercent(percent=0.5)
ImputeVar(method="knn")
IsSmallSmplSize();
FilterVariable("iqr")
Normalization("MedianNorm", "LogNorm", "RangeNorm", "207", "F", ratio=FALSE, ratioNum=20)
Ttests.Anal(F, 0.05, FALSE, TRUE)
Ttests.Anal(F, 1.0, FALSE, TRUE)
PlotPCAPairSummary("pca_pair_0_", "png", 72, width=NA, 5)
PlotPCA2DScore("pca_score2d_0_", "png", 72, width=NA, 1,2,0.95,1,0)
SaveTransformedData()
