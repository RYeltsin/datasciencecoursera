library(datasets)
data(iris)

?iris

install.packages("data.table")

library(data.table)
iris_dt <- as.data.table(iris)
iris_dt[Species == "virginica",round(mean(Sepal.Length))]

#=============================================================

library(datasets)
data(mtcars)

?mtcars
mtcars_dt <- as.data.table(mtcars)
mtcars_dt
mtcars_dt <- mtcars_dt[,  .(mean_cols = mean(hp)), by = cyl]
round(abs(mtcars_dt[cyl == 4, mean_cols] - mtcars_dt[cyl == 8, mean_cols]))
