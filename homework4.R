#1. W zbiorze danych survey z pakietu MASS, usu?? braki danych, wykorzystuj??c dwie dowolne metody. Por??wnaj wyniki.

#Zamiarana wszystkich wartoscin noNA na 0.2
library(MASS)      
library(survey)
prodNA(summary, noNA = 0.2)
#problemy powstale
#.1 gdy warto???? oczekiwana ma byc ci??giem znaku 
#.2 przek??amanie w wynikach np zak??adaj??c ze zbieramy t??perature zast??pienie warto??ci 0.2 zniszczy np wyliczanie ??redniej 

#U??ycie missForest aby wygenerowa?? warto??ci 
#Funkcja missForest buduje losowy model lasu dla ka??dej zmiennej. Nast??pnie wykorzystuje model do przewidywania brakuj??cych warto??ci w zmiennej za pomoc?? obserwowanych warto??ci.
library(MASS)      
library(survey)
survey <- missForest(survey)
surveyforest<-survey$ximp
diag(cor(survey[, -5], surveyforest[,-5]))

#2. Napisz poprawn?? p??tl?? for(lub zastosuj inn?? iteracj??) z ??wiczenia 9, kt??ra usunie punkty oddalone z wybranej zmiennej w zbiorze danych.
library(outliers)
library(MASS)      
library(survey)
#Sex Wr.Hnd NW.Hnd W.Hnd    Fold Pulse    Clap Exer Smoke Height      M.I    Age
y.in<-survey

for (i in survey){
  y.out<-rm.outlier(y.in, fill = TRUE, median = TRUE, opposite = FALSE)
  y.out
  plot(y.out,pch=16,col=i,cex=1.5,main =paste("ss",i))
  boxplot(y.out,pch=16,col=i,cex=1.5)
  y.in<-y.out
}


x[which(x %in% boxplot.stats(x)$out)]
a <- survey$Age[which(survey$Age %in% boxplot.stats(survey$Age)$out)]
y.out<-rm.outlier(survey.$(i), fill = TRUE, median = TRUE, opposite = FALSE)



library(outliers)
x<- c(1, 60, 2, 1, 4, 4, 1, 1, 6, -30, 70)

x[which(x %in% boxplot.stats(x)$out)]
plot(x,pch=16,col=5,cex=1.5)
hist(x,pch=16,col=5,cex=1.5)
boxplot(x,pch=16,col=5,cex=1.5)

y<-rm.outlier(x, fill = FALSE, median = FALSE, opposite = FALSE)
plot(y,pch=16,col=6,cex=1.5)
boxplot(y,pch=16,col=6,cex=1.5)
hist(y,pch=16,col=6,cex=1.5)

y.in<-x
for(i in 1:length(x))
{
  y.out<-rm.outlier(y.in, fill = FALSE, median = FALSE, opposite = FALSE)
  y.out
  plot(y.out,pch=16,col=i,cex=1.5,main =paste("ss",i))
  boxplot(y.out,pch=16,col=i,cex=1.5)
  y.in<-y.out
}

library(MASS)      
library(survey)
survey <- missForest(survey)
surveyforest<-survey$ximp
diag(cor(survey[, -5], surveyforest[,-5]))

y.in<-survey




for(i in 1:length(x))
{
  y.out<-rm.outlier(y.in, fill = TRUE, median = TRUE, opposite = FALSE)
  y.out
  plot(y.out,pch=16,col=i,cex=1.5,main =paste("ss",i))
  boxplot(y.out,pch=16,col=i,cex=1.5)
  y.in<-y.out
}




