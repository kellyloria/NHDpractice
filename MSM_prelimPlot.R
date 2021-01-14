head(stream_dat)

#select sites:
### 4
siteNumber <- "10310500" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData4 <- readNWISdv(siteNumber,parameterCd, "2019-01-01","2020-10-01")

qwData4$dec_lat_va <- Info$dec_lat_va
qwData4$dec_long_va <- Info$dec_long_va
qwData4$huc_cd <- Info$huc_cd
qwData4$drain_area_va <- Info$drain_area_va
qwData4$project_no <- Info$project_no
qwData4$station_nm <- Info$station_nm
qwData4$state_cd <- Info$state_cd
qwData4$Site_Lab <- "E. Clear" 


head(qwData4)


### 7
siteNumber <- "10336645" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData7 <- readNWISdv(siteNumber,parameterCd, "2019-01-01","2020-10-01")

qwData7$dec_lat_va <- Info$dec_lat_va
qwData7$dec_long_va <- Info$dec_long_va
qwData7$huc_cd <- Info$huc_cd
qwData7$drain_area_va <- Info$drain_area_va
qwData7$project_no <- Info$project_no
qwData7$station_nm <- Info$station_nm
qwData7$state_cd <- Info$state_cd
qwData7$Site_Lab <- "W. General" 

head(qwData7)


### 8
siteNumber <- "10336660" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData8 <- readNWISdv(siteNumber,parameterCd, "2019-01-01","2020-10-01")

qwData8$dec_lat_va <- Info$dec_lat_va
qwData8$dec_long_va <- Info$dec_long_va
qwData8$huc_cd <- Info$huc_cd
qwData8$drain_area_va <- Info$drain_area_va
qwData8$project_no <- Info$project_no
qwData8$station_nm <- Info$station_nm
qwData8$state_cd <- Info$state_cd
qwData8$Site_Lab <- "W. Blackwood" 

head(qwData8)


### 11
siteNumber <- "10343500" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData11 <- readNWISdv(siteNumber,parameterCd, "2019-01-01","2020-10-01")

qwData11$dec_lat_va <- Info$dec_lat_va
qwData11$dec_long_va <- Info$dec_long_va
qwData11$huc_cd <- Info$huc_cd
qwData11$drain_area_va <- Info$drain_area_va
qwData11$project_no <- Info$project_no
qwData11$station_nm <- Info$station_nm
qwData11$state_cd <- Info$state_cd
qwData11$Site_Lab <- "W. Sagehen" 


head(qwData11)


### 13
siteNumber <- "10348460" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData13 <- readNWISdv(siteNumber,parameterCd, "2019-01-01","2020-10-01")

qwData13$dec_lat_va <- Info$dec_lat_va
qwData13$dec_long_va <- Info$dec_long_va
qwData13$huc_cd <- Info$huc_cd
qwData13$drain_area_va <- Info$drain_area_va
qwData13$project_no <- Info$project_no
qwData13$station_nm <- Info$station_nm
qwData13$state_cd <- Info$state_cd
qwData13$Site_Lab <- "E. Franktown" 


head(qwData13)


### 14
siteNumber <- "10348850" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData14 <- readNWISdv(siteNumber,parameterCd,"2019-01-01","2020-10-01")

qwData14$dec_lat_va <- Info$dec_lat_va
qwData14$dec_long_va <- Info$dec_long_va
qwData14$huc_cd <- Info$huc_cd
qwData14$drain_area_va <- Info$drain_area_va
qwData14$project_no <- Info$project_no
qwData14$station_nm <- Info$station_nm
qwData14$state_cd <- Info$state_cd
qwData14$Site_Lab <- "E. Galena" 


head(qwData14)


stream_dat2020 <- rbind(qwData4, qwData7, qwData8,
                        qwData11, qwData13, qwData14)
head(stream_dat2020)


p3 <- ggplot(stream_dat2020, aes(x=Date, y=X_00060_00003, color =(site_no))) + 
  geom_point() +  
  theme_classic() + 
  labs(x ="Date", y = "Discharge") + 
  scale_color_manual(values=c("#e6c955", "#5d89a6", "#71a5c7",
                              "#426175", "#bda546", "#917b21"))+
  facet_wrap(~Site_Lab)

#ggsave(paste0(outputDir,"/MSM_Discharge20192020.jpeg"), p3, scale = 1.5, width = 14, height =8, units = c("cm"), dpi = 500)

