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

