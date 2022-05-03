#write an r program to compare two data frames to find the elements in first data frame that are not present in second data frame.
df_90 = data.frame(
  "item" = c("item1","item2","item3"),
  "jan_sale" = c(12,14,12),
  "feb_sale" = c(11,12,15),
  "mar_sale" = c(12,14,15)
)
df_91 = data.frame(
  "item" = c("item1","item2","item3"),
  "jan_sale" = c(12,14,12),
  "feb_sale" = c(11,12,15),
  "mar_sale" = c(12,15,18)
)
prin("original dataframes:")
print(df_90)
print(df_91)
print("row(s) in first data frame that are not present in second data frane:")
print(setdiff(df90,df_91))
