# Below is your R command history : 
InitDataObjects("conc", "msetqea", FALSE)
Read.TextData("Metabolomic_WAT.csv", "colu", "disc");
CrossReferencing("name");
SanityCheckData();
RemoveMissingPercent(percent=0.5)
ImputeVar(method="knn")
IsSmallSmplSize();
FilterVariable("none")
Normalization("MedianNorm", "LogNorm", "RangeNorm", "201", "F", ratio=FALSE, ratioNum=20)
SetMetabolomeFilter(F);
SetCurrentMsetLib("pathway", 0, F);
CalculateGlobalTestScore()
SaveTransformedData()
