# Supplementary Information 4: Statistical analyses

# R analyses for paper "The Late Gravettian site of Kostenki 21 Layer 
# III, Russia: a chronocultural reassessment based on a new 
# interpretation of the significance of intra-site spatial patterning"
# Reynolds, N., Germonpre, M., Bessudnov, A. A. & Sablin, M. V.
# Journal of Paleolithic Archaeology, 2019

# All data for analyses is available in SI of above paper

# All analyses performed in R 3.4.3 (https://www.r-project.org/) by NR.

#######################################################################
# Shouldered points: comparison of Gagarino and Kostenki 21/III       #
#######################################################################

# Loading of data and subsetting according to site; subsetting of unbroken artefacts:
data <- read.csv("SI_Table_1_Shouldered_points.csv", encoding="UTF-8")
Gag <- subset(data, grepl("Gag", data$ID))
Gme <- subset(data, grepl("Gme", data$ID))
Gagentire <- Gag[Gag$Fragment == "Entire", ]
Gmeentire <- Gme[Gme$Fragment == "Entire", ]

#----------------------------------------------------------------------

# Wilcoxon rank-sum test on lengths of unbroken shouldered points:
results <- wilcox.test(Gagentire$Length,Gmeentire$Length)
Z       <- qnorm(results$p.value)

# Results:
results
##         Wilcoxon rank sum test
## 
## data:  Gagentire$Length and Gmeentire$Length
## W = 11, p-value = 0.01138
## alternative hypothesis: true location shift is not equal to 0

Z
## [1] -2.277605


#######################################################################
# Anosovka points: comparison of Kostenki 11/II and Kostenki 21/III   #
#######################################################################

# Loading of data and subsetting according to site; subsetting of unbroken artefacts:
data <- read.csv("SI_Table_2_Anosovka_points.csv", encoding="UTF-8")
An2 <- subset(data, grepl("An2", data$ID))
Gme <- subset(data, grepl("Gme", data$ID))
An2entire <- An2[An2$Fragment == "Entire", ]
Gmeentire <- Gme[Gme$Fragment == "Entire", ]

#----------------------------------------------------------------------

# Wilcoxon rank-sum test on widths of unbroken artefacts:
results <- wilcox.test(An2entire$Width,Gmeentire$Width)
Z       <- qnorm(results$p.value)

# Results:
results
##        Wilcoxon rank sum test with continuity correction
## 
## data:  An2entire$Width and Gmeentire$Width
## W = 391, p-value = 0.8913
## alternative hypothesis: true location shift is not equal to 0

Z
## [1] 1.233295

#----------------------------------------------------------------------

# Wilcoxon rank-sum test on thicknesses of unbroken artefacts:
results <- wilcox.test(An2entire$Thickness,Gmeentire$Thickness)
Z       <- qnorm(results$p.value)

# Results:
results
##         Wilcoxon rank sum test with continuity correction
## 
## data:  An2entire$Thickness and Gmeentire$Thickness
## W = 439.5, p-value = 0.5305
## alternative hypothesis: true location shift is not equal to 0

Z
## [1] 0.07653715

#----------------------------------------------------------------------

# Wilcoxon rank-sum test on lengths of unbroken artefacts:
results <- wilcox.test(An2entire$Length,Gmeentire$Length)
Z       <- qnorm(results$p.value)

# Results:
results
##         Wilcoxon rank sum test with continuity correction
## 
## data:  An2entire$Thickness and Gmeentire$Thickness
## W = 242.5, p-value = 0.01157
## alternative hypothesis: true location shift is not equal to 0

Z 
## [1] -2.270975