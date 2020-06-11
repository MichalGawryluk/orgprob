library( dplyr)
library( stargazer)

#setwd("D:/Edukacja/1.Doktorat/ROK_3/organizacja_projektow_naukowych/ramsza/ver1/proj_mg")

df = read.csv(file= "./dane/usarrest.csv")

# Tablica
dTable <- df %>% select(Murder,Assault,UrbanPop)
dTable

stargazer( dTable,
           out = "./analiza/analiza_mg_tab_1.tex",
           summary = FALSE,
           rownames = TRUE,
           title = "Podstawowe statystyki dla wykorzystanych danych",
           align = TRUE,
           font.size = "small",
           no.space = TRUE,
           label = "tab:analiza_mg_tab_1")

# Pojedyncze liczby

dMeanAssault <- mean( df$Assault)
dMeanMurder <- mean( df$Murder)

`%+%` <- paste0

conn <- file( "./analiza/analiza_mg_mean_assault.tex", open = "wt")
writeLines( "\\(" %+% as.character( round( dMeanAssault, 2)) %+% "\\)", conn)
close( conn)

conn <- file( "./analiza/analiza_mg_mean_murder.tex", open = "wt")
writeLines( "\\(" %+% as.character( round( dMeanMurder, 2)) %+% "\\)", conn)
close( conn)
