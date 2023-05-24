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

plot(data$Beat,data$District)

ggplot(data, aes(x=Beat, y=District))+geom_point()

ggplot(data, aes(x=Beat, y=District))+geom_point()

plot(data$Beat,data$District,type = "l")

plot(data$Beat,data$District,type = "l")
points(data$Beat,data$District)

plot(data$Beat,data$District/2,col = "red")
points(data$Beat,data$District/2, col = "red")

plot(data$Beat,data$District,type = "l", col = "red")
points(data$Beat,data$District, col = "red")

ggplot(data, aes(x=Beat, y=District))+geom_line()

barplot(data$Beat, names.arg = data$ID)

barplot(table(data$Beat))

ggplot(data, aes(x=Beat, y=District))+geom_line(col = "red")

ggplot(data, aes(x=District))+geom_histogram(binwidth = 4)

ggplot(data, aes(x=District))+geom_histogram(bins = 10)

ggplot(data, aes(x=District))+geom_histogram(col = "red")

ggplot(data, aes(x=District))+geom_histogram(fill = "red")

ggplot(data, aes(x=Beat))+geom_histogram() +
    geom_vline(aes(xintercept = 10), color = "red", linewidth = 2)

ggplot(data, aes(x=District))+geom_histogram() +
    geom_density(color = "green", linewidth = 2)

ggplot(data, aes(x=District))+geom_histogram() + geom_vline(aes(xintercept = 10), color = "red", linewidth = 2) +
    geom_density(color = "green", linewidth = 2)

ggplot(data, aes(x=District))+geom_histogram(boundary = 1)

ggplot(data, aes(x=District))+geom_histogram()+labs(x="Districts",y="Count")

ggplot(data, aes(x=District))+geom_histogram()+labs(title = "Districts")

ggplot(data, aes(x=District))+geom_histogram()+labs(x="Districts",y="Count",title = "Districts")

ggplot(data, aes(x=District))+geom_histogram()+xlim(0,10)

ggplot(data, aes(x=District))+geom_histogram()+ylim(0,40)

ggplot(data, aes(x=District))+geom_histogram()+xlim(0,10)+ylim(0,40)

ggplot(data, aes(x=District,y=Beat))+geom_line()+geom_point()

ggplot(data, aes(x=District,y=Beat))+geom_line(linetype = "dotted")

ggplot(data, aes(x=District,y=Beat))+geom_line(linetype = "dotted")+geom_point()

ggplot(data, aes(x=District,y=Beat))+geom_line(linetype = "dotted")+geom_point(col ="red")

ggplot(data, aes(x=District,y=Beat))+geom_line(linetype = "dotted",col = "red")+geom_point()

ggplot(data, aes(x=District,y=Beat))+geom_line(size=1.5)

ggplot(data, aes(x=District,y=Beat))+geom_line(col = "red",size=1.5)

ggplot(data, aes(x=District,y=Beat))+geom_line(col ="red",size=1.5)+geom_point()

ggplot(data, aes(x=District,y=Beat))+geom_line(linetype = "dotted",size=1.5)

ggplot(data, aes(x=District,y=Beat))+geom_line(linetype = "dotted",size=1.5,col = "red")

ggplot(data, aes(x=District,y=Beat))+geom_line(linetype = "dotted",size=1.5,col = "red")+geom_point()
