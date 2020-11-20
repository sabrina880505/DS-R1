# 2020/11/20(五), 109學年第一學期 資料科學應用 R小考(1)
#
# 學號:A106260082姓名:姜品君 
#
# 本檔案為各題之程式碼檔，無執行結果


# ex1(a)
score.a <- read.csv("Calculus-score-A.csv",header = 3)
colnames(score.a) <- c("座號", "學號", "姓名", "性別", "quiz(1)",	"quiz(2)",	"quiz(3)",	"quiz(4)",	"TA",	"MidtermExam",	"FinalExam",	"Attendance")
score.a.1 <- data.frame(score.a$座號(3:42),score.a$學號(3:42),score.a$姓名(3:42),score.a$性別(3:42),score.a$`quiz(1)`(3:42),score.a$`quiz(2)`(3:42),score.a$`quiz(3)`(3:42),score.a$`quiz(4)`(3:42),score.a$TA(3:42),score.a$MidtermExam(3:42),score.a$FinalExam(3:42),score.a$Attendance(3:42))
score.b <- read.xlsx('Calculus-score-B.xls', sheetIndex = 1, startRow = 3, encoding = "UTF-8")
colnames(score.b) <- c("座號", "學號", "姓名", "性別", "quiz(1)",	"quiz(2)",	"quiz(3)",	"quiz(4)",	"TA",	"MidtermExam",	"FinalExam",	"Attendance")
front.a <- head(score.a,5)
end.a <- tail(score.a,5)
front.a
end.a
front.b <- head(score.b,5)
end.b <- tail(score.b,5)
front.b
end.b