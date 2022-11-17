BabyNames <- BabyNames
BabyNames %>%
  group_by("First") %>%
  summarise(votesRecieved=n())

Minneapolis2013 %>%
  summarise(caseCount = n())

Minneapolis2013 %>%
  group_by(Second) %>%
  summarise(voteCount = n()) %>%
  arrange(desc(voteCount))

Minneapolis2013 %>%
  group_by(First)%>%
  filter(First=="undervote") %>%
  summarise(n = n())

Minneapolis2013 %>%
  group_by(Second)%>%
  filter(Second=="undervote") %>%
  summarise(n = n())

Minneapolis2013 %>%
  group_by(Third)%>%
  filter(Third=="undervote") %>%
  summarise(n = n())

Minneapolis2013 %>%
  group_by(First)%>%
  filter(First=="undervote") %>%
  summarise(n = n())

Minneapolis2013 %>%
  group_by(Second)%>%
  filter(Second=="undervote") %>%
  summarise(n = n())

Minneapolis2013 %>%
  group_by(First, Second)%>%
  summarise(instances = n()) %>%
  arrange(desc(instances))

Minneapolis2013 %>%
  group_by(Precinct)%>%
  summarise(n = n()) %>%
  arrange(desc(n))

Minneapolis2013 %>%
  group_by( "First" ) %>%
  summarise( votesReceived=n() )

Tmp <- group_by(BabyNames, year, sex ) %>% 
  summarise( totalBirths=sum(count)) 

Tmpei <- group_by(BabyNames, year, sex)
summarise(BabyNames,totalBirths=sum(count) )
