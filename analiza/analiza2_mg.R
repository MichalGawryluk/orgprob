library( dplyr)
library( stargazer)

#setwd("D:/Edukacja/1.Doktorat/ROK_3/organizacja_projektow_naukowych/ramsza/ver1/proj_mg")

df = read.csv(file= "./dane/usarrest.csv")

# PLOT
png( filename = "./analiza/analiza_mg_fig_1.png")

plot( df %>% filter( Murder >= 10) %>% select(UrbanPop,Assault),
      pch = 19, col = rgb( 0, 0, 1, 0.5), xlim = range( df$UrbanPop), ylim = range( df$Assault))
points( df %>% filter( Murder < 10) %>% select(UrbanPop,Assault),
        pch = 19, col = rgb( 1, 0.6, 0.2, 0.5), xlim = range( df$UrbanPop), ylim = range( df$Assault))
grid()
dev.off()