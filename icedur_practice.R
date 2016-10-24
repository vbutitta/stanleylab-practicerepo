####################################################
# This is a test script for all Stanley lab members to practice pulling and pushing between R studio and GitHub

# Directions: Each person should add one of the suggested lines of code to this script, next week we will look at how all these different edits from different people are handled by git

####################################################
# don't run #
ice.dur <- read.csv("C:/Users/Vincent/Downloads/north_temperate_lakes_lter__ice_duration_-_madison_lakes_area.csv") # VLB
save.image("~/stanleylab-practicerepo/ice.dur.RData") # VLB
#############

############ Run below ###############

#attach packages
library(zoo) #rollapply

load("ice.dur.RData") # Load ice duration data -LcL 2016-10-12

str(ice.dur)
summary(ice.dur)
head(ice.dur)


plot(ice.dur$year4, ice.dur$ice_duration, xlab= "Year", ylab="Ice Duration")

# Least squares model and trendline 
modelfit<-lm(ice.dur$ice_duration~ice.dur$year4)
summary(modelfit)
abline(modelfit)

# calculate a 3 year moving average and plot line to figure as a smoother
mov.avg = rollapply(ice.dur$ice_duration, width = 3, by = 3, mean, align = "center", partial = TRUE)
mov.avg = data.frame(mov_avg = mov.avg, year4 = seq(from = 1853,to =2015, by = 3))
points(mov.avg$mov_avg ~ mov.avg$year4, type = "l", add = TRUE, col = "red", lwd = 2)



# someone make the plot prettier
# prettier plot by jrc
library(ggplot2)
ice.plot <- ggplot(ice.dur, aes(x=year4, y=ice_duration)) +
  geom_point(size=2, alpha=0.5) +
  theme_classic(14) +
  ylab("Ice Duration (days)") + xlab("Year") +
  stat_smooth(method="lm", se=FALSE, color="blue", size=2)  # linear model
ice.plot + geom_line(data=mov.avg, aes(x=year4, y=mov_avg), size=2) # adds 3-yr moving avg

# someone write an autumn-themed haiku
# someone give an example of how to plot an example of these data in ggplot
# someone work on a different project in R (freebie) (comment it in here so we don't all take this one!)
# someone subset these data to omit all NAs for ice_duration
na.omit (ice.dur$ice_duration)

# someone make edits on the newer plotting




# Successful pull, edit, commit, push back to Github - LCL 2016-10-12
# Successful pull, edit, commit, push back to Github - JAH 2016-10-12
# Successful pull, edit, commit, push back to Github - SMC 2016-10-13
# Successful pull, edit, commit, push back to Github - PJS 2016-10-17
# Successful pull, edit, commit, push back to Github - EAR 2016-10-23

#and another to make sure my password still works (SMC)
#and making sure this works on my desktop! (SMC)

# fix or delete one of the lines of code below
