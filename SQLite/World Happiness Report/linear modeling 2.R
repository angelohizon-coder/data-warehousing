

table1 <- read.csv('C:/Users/Angelo/Documents/SQLite/Datawarehouse_3CSC/World Happiness Report/test1.csv')
table1

table2 <- read.csv('C:/Users/Angelo/Documents/SQLite/Datawarehouse_3CSC/World Happiness Report/table2.csv')
table1

pred_model1 <- lm(table1$Ladder_score ~ table1$Logged_GDP_per_capita + table1$Social_support + table1$Healthy_life_expectancy + table1$Freedom_to_make_life_choices + table1$Generosity + table1$Perceptions_of_corruption)
summary(pred_model1)

pred_model2 <- lm(table2$Life_Ladder ~ table2$Log_GDP_per_capita + table2$Social_support + table2$Healthy_life_expectancy_at_birth + table2$Freedom_to_make_life_choices + table2$Generosity + table2$Perceptions_of_corruption)
summary(pred_model2)

-1.98660 + table1.Logged_GDP_per_capita * 0.21220 + table1.Social_support * 2.75267 + table1.Healthy_life_expectancy * 0.04105 + table1.Freedom_to_make_life_choices * 1.49362 + table1.Generosity * 0.37952 + table1.Perceptions_of_corruption * -0.73277

-2.24117 + table2.Log_GDP_per_capita * 0.12539 + table2.Social_support * 3.15913 + table2.Healthy_life_expectancy_at_birth * 0.05061 + table2.Freedom_to_make_life_choices * 1.64412 + table2.Generosity * 0.37789 + table2.Perceptions_of_corruption *  -0.72505
