#TP1
#Exercice1
iris #"affiche jeu de données"
class(iris)
View(iris)#"affiche le jeu dans une vue"
nrow(iris)#nombre de ligne du jeu
ncol(iris)#nombre de colonne
colnames(iris)#nom des différentes colonnes
summary(iris)#résumé du jeu
iris[ , c("Sepal.Length","Species")]
#/9
iris[ c(100, 103, 105) , ]#affiche seulement les lignes 100,103 et 105
iris[ c(50:100) , ]#affiche toutes les lignes entre 50 et 100
#/11
mean(iris$Sepal.Length)#moyenne de variable sepal length
#/12
median(iris$Sepal.Width)#calcul de la médiane de la variable
#/13
sd(iris$Petal.Length)#calcule l'écart-type
#/14
quantile(iris$Petal.Width, probs = seq(from = 0.1, to = 0.9, by =0.1))#calcule les déciles


#Exercice2
#/1
dfManga <- read.csv("C:/Users/nonog/Downloads/manga.csv",header = TRUE, sep = ",", dec = ".")
dfAnime <- read.csv("C:/Users/nonog/Downloads/anime.csv", header = TRUE, sep = ",", dec = ".")

class(dfManga)
class(dfAnime)
#/2
View(dfManga)
View(dfAnime)
#/3
dim(dfManga)
dim(dfAnime)
#/4
mean(dfManga$Score)#moyenne de chaque score
mean(dfAnime$Score)
#/5
sum(dfManga$Vote)
sum(dfAnime$Vote)#Le plus de votes est pour les animés
#/6
sd(dfManga$Score)
sd(dfAnime$Score)#l'échantillon le plus homogène au niveau des scores est celui des mangas.
#/7
quantile(dfManga$Score, probs = seq(from=0.1, to= 0.9, by = 0.1))
quantile(dfAnime$Score, probs = seq(from=0.1, to= 0.9, by = 0.1))
#filtre
ext1 <- subset(dfManga, Score > 9)
nrow(ext1)
ext2 <- subset(dfManga, Vote >= 200000 )
nrow(ext2)
ext3 <- subset(dfManga, Vote >= 200000 & Score > 8)
nrow(ext3)
ext4 <- subset(dfManga, Score>=7 & Score <=8)
nrow(ext4)
#Filtres rating
#/1
effectifRating <- table(dfAnime$Rating)
print(effectifRating)
length(effectifRating)
prop.table(effectifRating)
#/2
ext5 <- subset(dfAnime, Rating == "R - 17+ (violence & profanity)")
nrow(ext5)
#/3
ext6 <- subset(dfAnime, Rating == "R - 17+ (violence & profanity)" & Score > 8)
nrow(ext6)
#/4
ext7 <- subset(dfAnime, !Rating %in% "R - 17+ (violence & profanity)")
nrow(ext7)
#/5
extraction5 <- subset(dfAnime, Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction5)
#/6
extraction6 <- subset(dfAnime, !Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction6)
#/7
extraction7 <- subset(dfAnime, Score >= 9 | Vote > 400000)
nrow(extraction7)