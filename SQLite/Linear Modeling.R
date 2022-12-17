# forward slash in the given path of the file
csc <- read.csv('C:/Users/Angelo/Documents/SQLite/Datawarehouse_3CSC/3csc - Sheet1 - with gender.csv')
csc
# <- means equal
# lm or linear model
# dependent gwa and independent age
pred_gwa <- lm(csc$gwa~csc$age)
summary(pred_gwa)
# pred_gwa = 3.56936 + (-0.02743)*age

