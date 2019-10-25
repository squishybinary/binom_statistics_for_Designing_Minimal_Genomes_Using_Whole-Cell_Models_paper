#install binom package to desktop via R
# load binom package
library(binom)

singleGenes <- read.csv("single_gene_ko_binom_confint.csv", header = TRUE, sep = ",")
head(singleGenes)
xcolumn = 4
ncolumn = 5
output = NULL

for(i in 1:359) {
x = singleGenes[i,xcolumn]
n = singleGenes[i,ncolumn]
output = rbind(output, binom.confint(x, n, conf.level = 0.95, methods = "exact"))
}

#head(output)
#write.table(output, "results_singlegeneko_binom_confit.csv", sep = ",", append = T)
write.csv(output,"results_singlegeneko_binom_confit.csv")
