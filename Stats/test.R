stats20x.df = read.table("STATS20x.txt", header = TRUE)
trendscatter(Exam~Test, data=stats20x.df)