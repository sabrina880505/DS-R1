# 2020/12/11(五), 109學年第一學期 資料科學應用 R期中考
#
# 學號:A106260082        姓名:姜品君 
#
# 本檔案為各題之程式碼檔，無執行結果


# ex1
study <- function(x){
  Eng.hr <- c(rep(13:17,time = 5))
  Comp.hr <- c(rep(8:12,each =5))
  Tuition <- Eng.hr*400+Comp.hr*600
  u <- (Eng.hr^(1/2))*(Comp.hr^(1/2))
  Fit <- ifelse(Tuition <= 12000,'*',' ')
  study.table <- data.frame(Eng.hr,Comp.hr,Tuition,u,Fit)
}
study.table

# ex2(a)
library(xlsx)
score <- read.xlsx('Score-109.xlsx', sheetIndex = 1, startRow = 2, encoding = "UTF-8")
head(score,5)
tail(score,5)
# ex2(b)
library(data.table)
calculus.1 <- as.numeric(score$Calculus)
english.1 <- as.numeric(score$English)
calculus.1[is.na(calculus.1)] <- 0
english.1[is.na(english.1)] <- 0
score.1 <- data.frame(score,calculus.1,english.1)
fail <- ifelse(score.1$calculus.1 < 60 &score.1$english.1 < 60 ,'1','')
score.2 <- data.frame(score.1,fail)
ifelse(score.2$fail==1,score.2$ID,0)

# ex2(c)
mc <- mean(score.2$calculus.1)
me <- mean(score.2$english.1)
mc.1 <- sum((score.2$calculus.1-mc)*(score.2$english.1-me))
mcc <- (sum((score.2$calculus.1-mc)^2)^(1/2))*(sum((score.2$english.1-me)^2)^(1/2))
my.cor <- mc.1/mcc
my.cor
# ex2(d)
cor(score.2$calculus.1,score.2$english.1)

# ex3(a)
x <- c(-3:3)
y <- ((x-0)^2)/2
my.dnorm <- (1/((2*pi*1)^(1/2)))^exp(y)
# ex3(b)
dnorm <-dnorm(-3:3)

data.frame(x,my.dnorm,dnorm)
