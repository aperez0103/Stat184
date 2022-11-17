library(readxl)

familyData <- read_excel(
  path = "/Users/angel/Desktop/FamilyHeights.xlsx",
  range = "B1:D32")


armyData <- read_excel(
  path = "/Users/angel/Desktop/ArmyData.xlsx"
)

read.table(
  file = "FamilyHeights.xlsx",
  header = TRUE
)
