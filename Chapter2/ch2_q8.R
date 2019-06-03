college = read.csv("College.csv")
fix(college)
rownames(college) <- college[,1]
college <- college[,-1]

# summary(college)

# pdf("pairs.pdf")
# pairs(college[,1:10])
# dev.off()
#
# pdf("boxplot.pdf")
# boxplot(Outstate~Private, data=college, xlab="Private", ylab="Outstate")
# dev.off()

# Elite <- rep("No", nrow(college))
# Elite[college$Top10Perc > 50] <- "Yes"
# Elite <- as.factor(Elite)
# college <- data.frame(college, Elite)
# summary(college)
# pdf("elites.pdf")
# boxplot(Outstate~Elite, data=college, xlab="Elite", ylab="Outstate")
# dev.off()

par(mfrow=c(2,2))
pdf("apps.pdf")
hist(college$Apps, breaks=50, xlim=c(0,25000), main="Apps")
dev.off()
