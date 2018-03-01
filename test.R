library(shiny)
require(shinydashboard)
library(ggplot2)
library(dplyr)

Sales <- read.csv('Sales.csv',stringsAsFactors = F,header=T)
head(Sales)

total.revenue <- sum(Sales$Revenue)
total.revenue
sales.account <- Sales %>% group_by(Account) %>% 
  summarise(value = sum(Revenue)) %>% filter(value==max(value))
sales.account


sales.account <- Sales %>% group_by(Account) %>% 
  summarise()
sales.account
?summarise