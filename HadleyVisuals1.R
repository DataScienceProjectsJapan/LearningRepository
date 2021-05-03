library(tidyverse)
mpg
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
colnames(mpg)
mpg
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = manufacturer, y = cty))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = year, y = cty))

ggplot(data = mpg) + geom_point(mapping = aes(x = class, y = drv))


ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
View(mpg)

# Left
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Right
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy),color="blue", shape=18)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(. ~ class)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(~ cty)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(drv~ class, nrow = 2)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype=drv, color=drv))+geom_point(mapping =aes(x = displ, y = hwy, color=drv ), size=2)

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv, color=drv))


ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class %in% c("subcompact","midsize")), se = FALSE, mapping=aes(color=class))
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color= class)) + 
  geom_smooth(data = filter(mpg, class %in%class ), se = FALSE, mapping=aes(color=class)) #not sure why I need class %in%class

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_boxplot(mapping = aes(color = class)) + 
  geom_smooth()

ggplot(data=diamonds, mapping = aes(x=cut))+geom_bar(aes(fill=cut))
ggplot(data=diamonds, mapping = aes(x=cut))+geom_bar(aes(fill=cut,y=clarity),stat = "identity")
ggplot(data=diamonds, mapping = aes(y=cut))+geom_col(aes(fill=cut))


ggplot(mtcars, aes(x=factor(cyl)))+
  geom_bar(stat="bin", width=0.7, fill="steelblue")+
  theme_minimal()
df <- data.frame(dose=c("D0.5", "D1", "D2"),
                 len=c(4.2, 10, 29.5))
p<-ggplot(df, aes(x=dose, y=len, color=dose)) +
  geom_bar(stat="identity", fill="white")
p
install.packages("RColorBrewer")
library(RColorBrewer)
# Use custom color palettes
p+scale_fill_manual(values=c("#999999", "#E69F00", "#56B4E9"))
# use brewer color palettes
p+scale_fill_brewer(palette="Dark2")
# Use grey scale
p + scale_fill_grey()

#If we want to use a variable as the height of columns. This gives a plot in which the y variable is a column in the dataset.
ggplot(data = mpg, aes(x = model,y = displ,fill = class))+geom_bar(stat = "identity")
#2.We use stat = “bin” when the variable is not a column in the dataset:
ggplot(data = mpg, aes(x = displ,fill = class))+
  geom_bar(stat = "bin")



