# Write an R program to create a Data frames which contain details of 5 employees and
# display the details in ascending order.
Employees = data.frame(Name=c("Ramesh","Umesh","Ganesh","Dinesh","Ashwini"),
Gender=c("M","M","M","M","F"),
Age=c(25,22,25,26,22),
Designation=c("CEO"," ASSISTANT ","Executive","Clerk"," Manager "),
SSN=c("123-34-2346","123-44-779","556-24-433","123-98-987","679-77-576")
)
print("Details of the employees:")
print(Employees)