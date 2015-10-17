# Below is your R command history : 
InitDataObjects("conc", "msetqea", FALSE)
Read.TextData("WAT_HFDGTXvsHFDVeh_DNA_norm_nameFixed.csv", "colu", "disc");
CrossReferencing("name");
SanityCheckData();
RemoveMissingPercent(percent=0.5)
ImputeVar(method="knn")
IsSmallSmplSize();
FilterVariable("iqr")
Normalization("NULL", "NULL", "RangeNorm", "X207", "F", ratio=FALSE, ratioNum=20)
SetMetabolomeFilter(F);
SetCurrentMsetLib("pathway", 0, F);
CalculateGlobalTestScore()
CalculateGlobalTestScore()
CalculateGlobalTestScore()
CalculateGlobalTestScore()
CalculateGlobalTestScore()
CalculateGlobalTestScore()
SaveTransformedData()
