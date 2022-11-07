# AM10 Data Visualisation and Story Telling - Group 8 Project

# Welcome to the Football Corner!

Hello there, fellow football fanatic! You have entered the ultimate football nerd zone, where we combine our passion of the sport of the gods
with our love for data. In this repository, we will take a trip through the stats behind the players, matches and teams and try to understand 
what is going on behind the scenes. While we will focus especially on the most recent season of the Premier League, we will also include insights
about less recent football history and other leagues.

## What kind of questions do we seek to address?

Any football match is a combination of many unique variables, including player attributes, team compositions and match ups. This inevitably leads
to some interesting questions we seek to answer:

- Why do certain players outperform their competitive set?
- What team compositions work best?
- Can we predict a matche's outcome before the first pass has been made?
- Are teams putting their players in the right position given their strengths?
- Do different leagues need different types of players?
- Who was the MVP of the 2021-2022 Premier League?
- and more...

## What data will we use for our analysis?

We have identified a suitable dataset to start from, which provides information about each player of the 2021-2022 Premier League season. 
The dataset can be found here: https://www.kaggle.com/datasets/vivovinco/20212022-football-player-stats. It includes detailed information 
about each player's summary statistics from the season, from major information such as total goals to more minute details including the amount
of balls that were successfully intercepted.

To deepen the level of our analysis, we intend to complement the data set with additional information such as history team and match statistics (also
found unter the link provided above). This way, we hope to be able to make predictions about match outcomes for future seasons.

## What kind of statistical methods will we utilize?

We would expect that certain positions on the soccer field are associated with certain player attributes. Based on these attributes, we 
will be able to use clustering methods to determine what the associated attributes are and if a player might be positioned wrongly by his team.
Additionally, we will investigate whether we can use the player statistics used by popular video game "FIFA" to predict a given team's success, or what caused
a team to perform better/worse from one season to the next. For this, Ridge and/or Lasso regression will proof useful. 