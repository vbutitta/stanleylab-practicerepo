####################################################
# This is a test script for all Stanley lab members to practice pulling and pushing between R studio and GitHub

# Directions: Each person should add one of the suggested lines of code to this script, next week we will look at how all these different edits from different people are handled by git

####################################################
# don't run #
ice.dur <- read.csv("C:/Users/Vincent/Downloads/north_temperate_lakes_lter__ice_duration_-_madison_lakes_area.csv") # VLB
save.image("~/stanleylab-practicerepo/ice.dur.RData") # VLB
#############

############ Run below ###############

load("ice.dur.RData") # Load ice duration data -LcL 2016-10-12

str(ice.dur)
summary(ice.dur)
head(ice.dur)


plot(ice.dur$year4, ice.dur$ice_duration, xlab= "Year", ylab="Ice Duration")


modelfit<-lm(ice.dur$ice_duration~ice.dur$year4)
summary(modelfit)

# someone add a trendline
# someone make the plot prettier
# someone write an autumn-themed haiku
# someone give an example of how to plot an example of these data in ggplot
# someone work on a different project in R (freebie) (comment it in here so we don't all take this one!)
# someone subset these data to omit all NAs for ice_duration
# someone make edits on the newer plotting





# Successful pull, edit, committ, push back to Github -LCL 2016-10-12
# Successful pull, edit, commit, push back to Github - JAH 2016-10-12
# Successful pull, edit, commit, push back to Github - SMC 2016-10-13
# Successful pull, edit, commit, push back to Github - PJS 2016-10-17

#and another to make sure my password still works (SMC)
#and making sure this works on my desktop! (SMC)

# fix or delete one of the lines of code below
