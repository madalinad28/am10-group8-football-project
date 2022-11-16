library(tidyverse)
library(readr)
players_21 <- read_delim("data/2122players.csv", 
                           delim = ";", escape_double = FALSE, trim_ws = TRUE)
players_22 <- read_delim("data/2223players.csv", 
                         delim = ";", escape_double = FALSE, trim_ws = TRUE)
teams_21 <- read_delim("data/2122teams.csv", 
                         delim = ";", escape_double = FALSE, trim_ws = TRUE)
teams_22 <- read_delim("data/2223teams.csv", 
                       delim = ";", escape_double = FALSE, trim_ws = TRUE)

players_21 <- players_21 %>% 
  mutate(Pos = substr(Pos,1,2))
unique(players_21$Pos)

players_22 <- players_22 %>% 
  mutate(Pos = substr(Pos,1,2))

# key_features_all_pos: Player,Nation,Pos,Squad,Comp,Age,MP,Starts,Min,
# Shots,Sot,ShoDist,
# PasTotCmp,PasAtt,PasShoCmp,PasMedCmp,PasLonCmp, PassPress, PasCrs
# Tkl, TklWon, Press, PresSucc, Blocks, Interceptions, Clr,
# Touches, DriSucc, DriAtt, DriPast, Carries, 
# RecTarg, Rec, Fls, AerWon%





teams_21 %>% 
  filter(Country == "ENG") %>% 
  mutate(GA = GA/MP,GF = GF/MP) %>% 
  ggplot(aes(x = GA , y = GF))+
  geom_point()+
  geom_hline(yintercept = mean(teams_21$GF/teams_21$MP), colour = "#fce53f")+
  geom_vline(xintercept = mean(teams_21$GA/teams_21$MP), colour = "#fce53f")+
  geom_text(aes(label=Squad),hjust=-0.1, vjust=-0.1, check_overlap = TRUE) +
  xlab("npGA/90") +
  ylab("npGF/90") +
  labs(title = "np Goals vs np Goals Conceded (per 90 m)",
       subtitle = "English Premier League 2021/2022",
       caption = ("Data: FBref"))

teams_22 %>% 
  filter(Country == "ENG") %>% 
  mutate(GA = GA/MP,GF = GF/MP) %>% 
  ggplot(aes(x = GA , y = GF))+
  geom_point()+
  geom_hline(yintercept = mean(teams_22$GF/teams_22$MP), colour = "#fce53f")+
  geom_vline(xintercept = mean(teams_22$GA/teams_22$MP), colour = "#fce53f")+
  geom_text(aes(label=Squad), hjust=-0.1, vjust=-0.1, check_overlap = TRUE) +
  xlab("npGA/90") +
  ylab("npGF/90") +
  labs(title = "np Goals vs np Goals Conceded (per 90 m)",
       subtitle = "English Premier League 2022/2023",
       caption = ("Data: FBref"))


