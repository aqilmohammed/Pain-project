df= read.csv('metastability.csv')
t.test(metastability ~ Group, df)

term= subset(df, df$Group=='Term')$metastability
preterm= subset(df, df$Group=='Preterm')$metastability

library(ggpubr)
ggqqplot(term)
shapiro.test(term)

ggqqplot(preterm)
shapiro.test(preterm)

bartlett.test(metastability~Group, df)
