# Below is your R command history : 
InitDataObjects("conc", "msetqea", FALSE)
Read.TextData("Metabolomic_WAT_HFDTx_vs_HFDVeh_MSEA.csv", "colu", "disc");
CrossReferencing("name");
SanityCheckData();
RemoveMissingPercent(percent=0.5)
ImputeVar(method="knn")
IsSmallSmplSize();
FilterVariable("none")
Normalization("MedianNorm", "LogNorm", "RangeNorm", "207", "F", ratio=FALSE, ratioNum=20)
SetMetabolomeFilter(F);
SetCurrentMsetLib("snp", 0, F);
CalculateGlobalTestScore()
CalculateGlobalTestScore()
CalculateGlobalTestScore()
CalculateGlobalTestScore()
CalculateGlobalTestScore()
CalculateGlobalTestScore()
CalculateGlobalTestScore()
CalculateGlobalTestScore()
SaveTransformedData()
