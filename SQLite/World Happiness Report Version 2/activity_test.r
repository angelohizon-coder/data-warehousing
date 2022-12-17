# table1 <- data from 2021
table1 <- data.frame(read.csv('C:/Users/Angelo/Documents/SQLite/Datawarehouse_3CSC/World Happiness Report/world-happiness-report-2021.csv'))
table1 <- subset(table1, ï..Country_name!='Czech Republic' & ï..Country_name!='Iraq' & ï..Country_name!='Maldives' & ï..Country_name!='Haiti' & ï..Country_name!='Burundi')
table1 <- table1[order(table1$ï..Country_name) , ]
table1

# table2 <- data from 2019
table2 <- data.frame(read.csv('C:/Users/Angelo/Documents/SQLite/Datawarehouse_3CSC/World Happiness Report/world-happiness-report.csv'))
table2 <- subset(table2, year==2019)
table2

# pred_model1 <- prediction of Ladder score/Happiness index for 2021
pred_model1 <- lm(table1$Ladder_score ~ table1$Logged_GDP_per_capita + table1$Social_support + table1$Healthy_life_expectancy + table1$Freedom_to_make_life_choices + table1$Generosity + table1$Perceptions_of_corruption)
summary(pred_model1)
pred_table1 <- data.frame(predict(pred_model1))
pred_table1

# pred_model2 <- prediction of Ladder score/Happiness index for 2019
table2 <- as.data.frame(table2)
# replace na data with 0
table2[is.na(table2)] <- 0
pred_model2 <- lm(table2$Life_Ladder ~ table2$Log_GDP_per_capita + table2$Social_support + table2$Healthy_life_expectancy + table2$Freedom_to_make_life_choices + table2$Generosity + table2$Perceptions_of_corruption)
summary(pred_model2)
pred_table2 <- data.frame(predict(pred_model2))
pred_table2

# pred_first, pred_second <- created data frames for join/merge function
id <- c(1:144)
pred_2021 <- c(pred_table1$predict.pred_model1.)
pred_2019 <- c(pred_table2$predict.pred_model2.)
pred_first <- data.frame(id, pred_2021)
pred_second <- data.frame(id, pred_2019)

# join/merge pred_first, pred_second <- create data frame pred
pred_join <- merge(pred_first, pred_second, by.pred_first = id, by.pred_second = id)
pred_join
pred <- data.frame(table1$ï..Country_name, pred_2021, pred_2019, table1$Ladder_score)
pred

