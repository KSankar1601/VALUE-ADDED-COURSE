library(robotstxt)
library(rvest)

path = paths_allowed("https://www.imdb.com/chart/toptv/")

url<- "https://www.imdb.com/chart/toptv/"

my_html<-read_html(url)
my_tables <- html_nodes(my_html,"table")
movie_table <- html_table(my_tables)[[1]]

View(movie_table)

movies <- movie_table[.2:3]
View(movies)

str(movies)

write.csv(movies,"My_movies.csv")

