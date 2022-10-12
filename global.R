library(quantmod)
library(shiny)
library(shinydashboard)
library(dplyr)
library(ggplot2)
library(DT)
library(tidyverse)
library(lubridate)
library(RColorBrewer)
library(hrbrthemes)


master_df <- read.csv("soccerStats.csv")
column_list <- c("Messi","Ronaldo","Ibrahimovíc","Modric","Benzema")

master_df$X <- NULL

master_df <- master_df %>% drop_na()
master_df$Date <- strptime(master_df$Date, format="%Y-%m-%d")