#Write an R program to create a simple bar plot of five subject’s marks.
marks = c(70, 80, 78, 74)
barplot(marks,
main = "Comparing marks of 5 subjects",
xlab = "Marks",
ylab = "Subject",
names.arg = c("English", "Science", "Math.", "Hist."),
col = "darkred",
horiz = FALSE)