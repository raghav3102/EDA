data <- read.csv("D:/Sem 6/EDA/Crimes_-_2001_to_Present_refined.csv")

install.packages("ggplot2")

library(ggplot2)

ggplot(data, aes(x=Beat)) + geom_freqpoly()

ggplot(data, aes(x = factor(Beat), y = ID)) +geom_boxplot()+stat_summary(fun = "mean", geom = "point", shape = 23, size = 3, fill = "orange")

ggplot(data,aes(x=Beat))+geom_histogram()

ggplot(data,aes(x=Beat))+geom_histogram(fill="white",color="black")

ggplot(data,aes(x=Beat))+geom_density()

ggplot(data,aes(x=Beat))+geom_boxplot()

ggplot(data,aes(y=Beat))+geom_bar()

ggplot(data,aes(x=ID,y=Beat))+geom_step()

ggplot(data,aes(x=ID,y=Beat))+geom_count()

ggplot(data,aes(x=ID,y=Beat))+geom_area()

ggplot(data,aes(x=ID,y=Beat))+geom_line()

ggplot(data,aes(x=ID))+geom_blank()

idv = data[["ID"]]
bv = data[["Beat"]]
plot(x=idv,y=bv)

ggplot(data,aes(x=ID,y=Beat))+geom_point()

ggplot(data, aes(x = ID, y = Beat)) +
        geom_point() +
        stat_smooth(method = "lm",
        col = "#C42126", se = FALSE, size = 1
)
