library(ggplot2)

#from https://stackoverflow.com/questions/46561340/plot-confidence-interval-points-and-line

data <- read.csv("results31_singlegeneko_binom_confit.csv", header = TRUE, sep = ",")

#genes (col 1)
#x (col 3)
#lower, upper (col6, col7)

  
plot <- ggplot(data, aes(genes, x)) +
  geom_point() +
  geom_line() +
  geom_errorbar(aes(ymin = x - lower, ymax = x + upper)) +
  labs(x = "Genes",
       y = "Phenotype Occurance",
       title = "Single Gene KO CI") +
  theme_classic() 
plot + theme(axis.text.x=element_text(angle = -90, hjust = 0))
