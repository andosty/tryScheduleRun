# getwd()
# setwd('/home/administrator/myShinyApps/tryScheduleRun/app.R')
# setwd('/srv/shiny-server/2024icbt/icbt_downloader.R')
setwd('/home/administrator/myShinyApps/tryScheduleRun/')

tryData <- data.frame(ID = c(1, 2, 3, 4, 5),
                  var1 = c('a', 'b', 'c', 'd', 'e'),
                  var2 = c(1, 1, 0, 0, 1))


saveRDS(tryData,'savedTestData.rds')

