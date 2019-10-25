#this is an example of how to load and change the script then commit to git

chap15.1<- read.csv('chap15q01HoneybeeCaffeine.csv')
head(chap15.1)
chap15.1$ppmCaffeine <- factor(chap15.1$ppmCaffeine, 
                               levels = c("50", "100", "150", "200"))
chap15.1Anova <- lm(consumptionDifferenceFromControl ~ ppmCaffeine, data = chap15.1)
anova(chap15.1Anova)