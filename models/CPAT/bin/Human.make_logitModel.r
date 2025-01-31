data <- read.table(file="Human.feature.xls", blank.lines.skip=F,sep="\t",header=T)
attach(data)
mylogit <- glm(Label ~ mRNA + ORF + Fickett + Hexamer, family=binomial(link="logit"), na.action=na.pass)
save.image("Human.logit.RData")
