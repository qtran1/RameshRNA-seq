
wat_file <- "../data/metabolomic/Metabolomic_HFDGTXvsHFDVeh_DNA_normalized.csv"
wat_data <- read.csv(wat_file, header=T)
string_col <- wat_data$Sample
new_str_col <- gsub(" *\\(.*?\\)*$*", "",string_col)
new1 <- gsub("\\([^()]+\\)$ *","", string_col)
new2 <- gsub("\\([^()]+\\)\\*$","", new1)
new3 <- gsub("\\*$","", new2)
### ( and ) are special characters so they need to have \\ in front
### *? finds 0 or more spaces before (and after) the parentheses.
###  *$ means the character * is at the end of the string
### The .*? is a wildcard find to find all characters
wat_data$Sample <- new3
wat_data_new <- wat_data[!duplicated(wat_data$Sample),]
write.csv(wat_data_new, file="../data/metabolomic/WAT_HFDGTXvsHFDVeh_DNA_norm_nameFixed.csv", row.names=F)

