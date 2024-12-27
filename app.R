# getwd()
# setwd('/home/administrator/myShinyApps/tryScheduleRun/app.R')
#setwd('/srv/shiny-server/2024icbt/')
 setwd('/home/administrator/myShinyApps/2024icbt/')

tryData <- data.frame(ID = c(1, 2, 3, 4, 5),
                  var1 = c('a', 'b', 'c', 'd', 'e'),
                  var2 = c(1, 1, 0, 0, 1))

#create directory for saving data download if not exist
data_dir <- "Data_Download/"
hqDownload_dir <- paste(data_dir,'HQ_download/',sep='')
hq_extracted_dir <- paste(data_dir,'HQ_extracted/',sep='')

#delete Data directory if it already exist
ifelse(dir.exists(file.path(data_dir)),
       unlink(data_dir, recursive = TRUE),
       "Data Directory Exists")

#create Data directory if it does not already exist
ifelse(!dir.exists(file.path(data_dir)),
       dir.create(file.path(data_dir)),
       "Data Directory Exists")

#create HQ_download Director in Data folder if it does not already exist
ifelse(!dir.exists(file.path(hqDownload_dir)),
       dir.create(file.path(hqDownload_dir)),
       "HQ_download Directory Exists")

#create HQ_extracted Director in Data folder if it does not already exist
ifelse(!dir.exists(file.path(hq_extracted_dir)),
       dir.create(file.path(hq_extracted_dir)),
       "HQ_extracted Directory Exists")

saveRDS(tryData,'savedTestData.rds')

