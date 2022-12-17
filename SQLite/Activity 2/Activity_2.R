
# Angelo Louis L. Hizon
csc <- read.csv('D:/Downloads/3csc - csc_info1.csv')
csc

csc_info <- read.csv('D:/Downloads/3csc - csc_info2.csv')
csc_info

csc_test <- read.csv('C:/Users/Angelo/Documents/SQLite/Datawarehouse_3CSC/Practice 1/3csc.csv')
csc_test

pred_gwa <- lm(csc_test$gwa~csc_test$age+csc_test$ustet_score+csc_test$jhs_gwa+csc_test$shs_gwa)
summary(pred_gwa)

pred_gwa = 4.83652 + (0.35505)*age + (-0.03578)*ustet_score + (-0.01233)*jhs_gwa + (-0.05605)*shs_gwa
