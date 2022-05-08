library(s20x)
crash.df = read.table(file.choose(), header=TRUE)
crash.df = read.table('crash.txt', header=TRUE)
head(crash.df)

boxplot(crash.df$Wt[1:112], main = "weights of cars test")
summaryStats(crash.df$Wt[1:112])

normcheck(crash.df$Wt[1:112])

# Methods and Assumptions

# We are attempting to estimate the mean of one group of cars. So we
# do a one sample t-test. 
# 
# The weight of the cars should be independent of one another. The normality
# of the data is seen by the points lying on a straight line in the QQ plot.
# 
# The model fitted is wi = mu + ei where ei ~iid N(0, sd^2).


t.test(crash.df$Wt[1:112])


# Executive Summary

# Using the data collected from the National Transportation Safety Administration, 
# we were interested in estimating the average weight of the cars tested. The data 
# is based on 112 automobiles.
# 
# We estimated that the mean weight of the cars on the road is between 2686 and 
# 2876 pounds.