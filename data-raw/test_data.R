setwd("~/bayespop/R/wpps/wpp2024extra/data")
for (f in rev(list.files(".", pattern = "*.R$"))) {print(f); source(f)}
