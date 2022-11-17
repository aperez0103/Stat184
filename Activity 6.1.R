data <- BabyNames
## Names: Anthony; Angel; Geovanni; Cristian; Sasha ##

dataWrangled<-data %>%
  rename(Names = name) %>%
  group_by(Names, count, year) %>%
  filter(Names == "Angel"| Names == "Anthony" | Names == "Geovanni" | Names == "Sasha"| Names == "Cristian" )%>%
  filter(sex == "M") %>%
  summarise() %>%
  arrange(year)
 
dataWrangled %>% 
  ggplot(aes(x = year, y = count, group=Names))+ ggtitle( "Popularity of Perez Family Names Over Time") +
  geom_line(size = .5, alpha = 0.5, aes(color=Names)) +
  ylab("Popularity") + xlab("Year") + theme_bw()
          
  
