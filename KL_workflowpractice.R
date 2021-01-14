# Download stream flow from each site 
## ---------------------------
## Data aggregation of all stream gauge data
##
## Author: Kelly A. Loria
## Date Created: 2020-09-26
## Email: kelly.loria@nevada.unr.edu
##
## ---------------------------
## Load packages:
#install.packages("dataRetrieval")
#library(remotes)
#install_github("USGS-R/dataRetrieval", 
#               build_opts = c("--no-resave-data", "--no-manual"),
#               build_vignettes = TRUE)

library(dataRetrieval)
library(ggplot2)
library(scales)
library(tidyverse)
#library(zoo)

## ---------------------------
# Source Data from Water Quality Portal
#     List of all values:
#     https://help.waterdata.usgs.gov/code/parameter_cd_query?fmt=rdb&inline=true&group_cd=%
## ---------------------------

### 1
siteNumber <- "10308789" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData1 <- readNWISdv(siteNumber,parameterCd,
                             "1980-09-30","2020-10-01")

qwData1$dec_lat_va <- Info$dec_lat_va
qwData1$dec_long_va <- Info$dec_long_va
qwData1$huc_cd <- Info$huc_cd
qwData1$drain_area_va <- Info$drain_area_va
qwData1$project_no <- Info$project_no
qwData1$station_nm <- Info$station_nm
qwData1$alt_va <- Info$alt_va

names(Info)



head(qwData1)

plot(qwData$Date, qwData$X_00060_00003)


### 2
siteNumber <- "10308794" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData2 <- readNWISdv(siteNumber,parameterCd,
                     "1980-09-30","2020-10-01")

qwData2$dec_lat_va <- Info$dec_lat_va
qwData2$dec_long_va <- Info$dec_long_va
qwData2$huc_cd <- Info$huc_cd
qwData2$drain_area_va <- Info$drain_area_va
qwData2$project_no <- Info$project_no
qwData2$station_nm <- Info$station_nm
qwData2$state_cd <- Info$state_cd

head(qwData2)

plot(qwData2$Date, qwData2$X_00060_00003)


### 3
siteNumber <- "10310400" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData3 <- readNWISdv(siteNumber,parameterCd,
                      "1980-09-30","2020-10-01")

qwData3$dec_lat_va <- Info$dec_lat_va
qwData3$dec_long_va <- Info$dec_long_va
qwData3$huc_cd <- Info$huc_cd
qwData3$drain_area_va <- Info$drain_area_va
qwData3$project_no <- Info$project_no
qwData3$station_nm <- Info$station_nm
qwData3$state_cd <- Info$state_cd

head(qwData3)

### 4
siteNumber <- "10310500" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData4 <- readNWISdv(siteNumber,parameterCd,
                      "1980-09-30","2020-10-01")

qwData4$dec_lat_va <- Info$dec_lat_va
qwData4$dec_long_va <- Info$dec_long_va
qwData4$huc_cd <- Info$huc_cd
qwData4$drain_area_va <- Info$drain_area_va
qwData4$project_no <- Info$project_no
qwData4$station_nm <- Info$station_nm
qwData4$state_cd <- Info$state_cd

head(qwData4)


### 5
siteNumber <- "10311100" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData5 <- readNWISdv(siteNumber,parameterCd,
                      "1980-09-30","2020-10-01")

qwData5$dec_lat_va <- Info$dec_lat_va
qwData5$dec_long_va <- Info$dec_long_va
qwData5$huc_cd <- Info$huc_cd
qwData5$drain_area_va <- Info$drain_area_va
qwData5$project_no <- Info$project_no
qwData5$station_nm <- Info$station_nm
qwData5$state_cd <- Info$state_cd

head(qwData5)


### 6
siteNumber <- "10311200" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData6 <- readNWISdv(siteNumber,parameterCd,
                      "1980-09-30","2020-10-01")

qwData6$dec_lat_va <- Info$dec_lat_va
qwData6$dec_long_va <- Info$dec_long_va
qwData6$huc_cd <- Info$huc_cd
qwData6$drain_area_va <- Info$drain_area_va
qwData6$project_no <- Info$project_no
qwData6$station_nm <- Info$station_nm
qwData6$state_cd <- Info$state_cd

head(qwData6)



### 7
siteNumber <- "10336645" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData7 <- readNWISdv(siteNumber,parameterCd,
                      "1980-09-30","2020-10-01")

qwData7$dec_lat_va <- Info$dec_lat_va
qwData7$dec_long_va <- Info$dec_long_va
qwData7$huc_cd <- Info$huc_cd
qwData7$drain_area_va <- Info$drain_area_va
qwData7$project_no <- Info$project_no
qwData7$station_nm <- Info$station_nm
qwData7$state_cd <- Info$state_cd

head(qwData7)


### 8
siteNumber <- "10336660" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData8 <- readNWISdv(siteNumber,parameterCd,
                      "1980-09-30","2020-10-01")

qwData8$dec_lat_va <- Info$dec_lat_va
qwData8$dec_long_va <- Info$dec_long_va
qwData8$huc_cd <- Info$huc_cd
qwData8$drain_area_va <- Info$drain_area_va
qwData8$project_no <- Info$project_no
qwData8$station_nm <- Info$station_nm
qwData8$state_cd <- Info$state_cd

head(qwData8)



### 9
siteNumber <- "10336676" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData9 <- readNWISdv(siteNumber,parameterCd,
                      "1980-09-30","2020-10-01")

qwData9$dec_lat_va <- Info$dec_lat_va
qwData9$dec_long_va <- Info$dec_long_va
qwData9$huc_cd <- Info$huc_cd
qwData9$drain_area_va <- Info$drain_area_va
qwData9$project_no <- Info$project_no
qwData9$station_nm <- Info$station_nm
qwData9$state_cd <- Info$state_cd

head(qwData9)


### 10
siteNumber <- "10336700" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData10 <- readNWISdv(siteNumber,parameterCd,
                      "1980-09-30","2020-10-01")

qwData10$dec_lat_va <- Info$dec_lat_va
qwData10$dec_long_va <- Info$dec_long_va
qwData10$huc_cd <- Info$huc_cd
qwData10$drain_area_va <- Info$drain_area_va
qwData10$project_no <- Info$project_no
qwData10$station_nm <- Info$station_nm
qwData10$state_cd <- Info$state_cd

head(qwData10)


### 11
siteNumber <- "10343500" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData11 <- readNWISdv(siteNumber,parameterCd,
                       "1980-09-30","2020-10-01")

qwData11$dec_lat_va <- Info$dec_lat_va
qwData11$dec_long_va <- Info$dec_long_va
qwData11$huc_cd <- Info$huc_cd
qwData11$drain_area_va <- Info$drain_area_va
qwData11$project_no <- Info$project_no
qwData11$station_nm <- Info$station_nm
qwData11$state_cd <- Info$state_cd


head(qwData11)


### 12
siteNumber <- "10347600" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData12 <- readNWISdv(siteNumber,parameterCd,
                       "1980-09-30","2020-10-01")

qwData12$dec_lat_va <- Info$dec_lat_va
qwData12$dec_long_va <- Info$dec_long_va
qwData12$huc_cd <- Info$huc_cd
qwData12$drain_area_va <- Info$drain_area_va
qwData12$project_no <- Info$project_no
qwData12$station_nm <- Info$station_nm
qwData12$state_cd <- Info$state_cd


head(qwData12)


### 13
siteNumber <- "10348460" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData13 <- readNWISdv(siteNumber,parameterCd,
                       "1980-09-30","2020-10-01")

qwData13$dec_lat_va <- Info$dec_lat_va
qwData13$dec_long_va <- Info$dec_long_va
qwData13$huc_cd <- Info$huc_cd
qwData13$drain_area_va <- Info$drain_area_va
qwData13$project_no <- Info$project_no
qwData13$station_nm <- Info$station_nm
qwData13$state_cd <- Info$state_cd


head(qwData13)


### 14
siteNumber <- "10348850" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData14 <- readNWISdv(siteNumber,parameterCd,
                       "1980-09-30","2020-10-01")

qwData14$dec_lat_va <- Info$dec_lat_va
qwData14$dec_long_va <- Info$dec_long_va
qwData14$huc_cd <- Info$huc_cd
qwData14$drain_area_va <- Info$drain_area_va
qwData14$project_no <- Info$project_no
qwData14$station_nm <- Info$station_nm
qwData14$state_cd <- Info$state_cd


head(qwData14)



### 15
siteNumber <- "11313477" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData15 <- readNWISdv(siteNumber,parameterCd,
                       "1980-09-30","2020-10-01")

qwData15$dec_lat_va <- Info$dec_lat_va
qwData15$dec_long_va <- Info$dec_long_va
qwData15$huc_cd <- Info$huc_cd
qwData15$drain_area_va <- Info$drain_area_va
qwData15$project_no <- Info$project_no
qwData15$station_nm <- Info$station_nm
qwData15$state_cd <- Info$state_cd


head(qwData15)


### 16
siteNumber <- "11401165" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData16 <- readNWISdv(siteNumber,parameterCd,
                       "1980-09-30","2020-10-01")

qwData16$dec_lat_va <- Info$dec_lat_va
qwData16$dec_long_va <- Info$dec_long_va
qwData16$huc_cd <- Info$huc_cd
qwData16$drain_area_va <- Info$drain_area_va
qwData16$project_no <- Info$project_no
qwData16$station_nm <- Info$station_nm
qwData16$state_cd <- Info$state_cd


head(qwData16)


### 17
siteNumber <- "11404240" 
Info <- readNWISsite(siteNumber)
parameterCd <- c("00060")  # discharge

#Raw daily data:
qwData17 <- readNWISdv(siteNumber,parameterCd,
                       "1980-09-30","2020-10-01")

qwData17$dec_lat_va <- Info$dec_lat_va
qwData17$dec_long_va <- Info$dec_long_va
qwData17$huc_cd <- Info$huc_cd
qwData17$drain_area_va <- Info$drain_area_va
qwData17$project_no <- Info$project_no
qwData17$station_nm <- Info$station_nm
qwData17$state_cd <- Info$state_cd


head(qwData17)


stream_dat <- rbind(qwData1, qwData2, qwData3, qwData4, qwData5, qwData6, qwData7,
                    qwData8, qwData9, qwData10, qwData11, qwData12, qwData13,
                    qwData14, qwData15, qwData16, qwData17)
head(stream_dat)

## ---------------------------
# Water quality data availability 
# \donttest{
siteIDs <-c('10308789','10308794', '10310400', '10310500', '10311100',
            '10311200', '10336645', '10336660', '10336676', '10336700',
            '10343500', '10347600', '10348460', '10348850', '11313477',
            '11401165', '11404240')

startDate <- "1980-09-30"
endDate <- "2020-10-01"

# Nitrate parameter codes:
parameterCd_N <- c("00600", # = nitrogen species has no data
                 "00602",
                 "00605",
                 #"00606",
                 "00607",
                 "00618",
                 #"00619",
                 "00631",
                 "71851", 
                 "71856")
                 #"99124",
                 #"99125",
                 #"99410",
                 #"99411",
                 #"99413",
                 #"99889",
                 #"99894") 

dfLong_N <- readNWISqw(siteIDs, parameterCd_N, 
                     startDate, endDate)

p <- ggplot(dfLong_N, aes(x=sample_dt, y=(result_va), colour =as.factor(site_no), shape=(parm_cd))) + 
  geom_point(alpha = 0.5) + facet_grid(.~site_no)

dfWide_N <- readNWISqw(siteIDs, parameterCd_N,
                     startDate, endDate, reshape=TRUE)
summary(dfWide_N)
summary(stream_dat)

# Merge data files
stream_dat1 <- left_join(stream_dat, dfWide_N[c("site_no", "sample_dt", "sample_tm",
                                                "result_va_00600", "result_va_00605",
                                                "result_va_00618", "result_va_00631",
                                                "result_va_71851", "result_va_71856",
                                                "result_va_00602", "result_va_00607")],
                         by = c('site_no'= 'site_no', 'Date' = 'sample_dt'))
summary(stream_dat1)

# Rename columns
names(stream_dat1)
# colnames(stream_dat1)[4] <- "discharge_00060"
# colnames(stream_dat1)[14] <- "TotalN_00600"
# colnames(stream_dat1)[15] <- "OrgN_00605"
# colnames(stream_dat1)[16] <- "NO3_00618"
# colnames(stream_dat1)[17] <- "NO3N02_00631"
# colnames(stream_dat1)[18] <- "NO3_71851"
# colnames(stream_dat1)[19] <- "NO3_71856"
# colnames(stream_dat1)[20] <- "TotalN_00602"
# colnames(stream_dat1)[21] <- "OrgN_00607"


# Phosphorus parameter codes:
parameterCd_P <- c(#"00662", # = P species has no data
                   "00665",
                   "00666",
                   #"00667",
                   "00670",
                   "00671",
                   "00673",
                   #"01072",
                   #"49567",
                   #"49568",
                   #"51288",
                   #"51289",
                   "70507",
                   "71886")
                   #"91004",
                   #"99891",
                   #"99893")

dfLong_P <- readNWISqw(siteIDs, parameterCd_P, 
                       startDate, endDate)

p <- ggplot(dfLong_P, aes(x=sample_dt, y=(result_va), colour =as.factor(site_no), shape=(parm_cd))) + 
  geom_point(alpha = 0.5) + facet_grid(.~site_no)

dfWide_P <- readNWISqw(siteIDs, parameterCd_P,
                       startDate, endDate, reshape=TRUE)
summary(dfWide_P)
summary(stream_dat)


stream_dat2 <- left_join(stream_dat1, dfWide_P[c("site_no", "sample_dt", "sample_tm",
                                                "result_va_00665", "result_va_00666",
                                                "result_va_00671", "result_va_00670",
                                                "result_va_00673", "result_va_70507",
                                                "result_va_71886")],
                         by = c('site_no'= 'site_no', 'Date' = 'sample_dt'))
summary(stream_dat2)

# Rename columns
names(stream_dat2)

# colnames(stream_dat2)[23] <- "P_00665.UF"
# colnames(stream_dat2)[24] <- "P_00666.F"
# colnames(stream_dat2)[25] <- "Orthophosphate_00671.F"
# colnames(stream_dat2)[26] <- "OrgP_00670.UF"
# colnames(stream_dat2)[27] <- "OrgP_00673.F"
# colnames(stream_dat2)[28] <- "Orthophosphate_70507.F"
# colnames(stream_dat2)[29] <- "PO4_71886.UF"


# Carbon parameter codes:
parameterCd_C <- c("00405", # dissolved CO2
                   #"00680", # organic carbon UF
                   "00681") # #organic carbon F
                   #"00686", # bed inorganic dry
                   #"00687", # bed organic dry
                   #"32330", # fDOM
                   #"63162", # Specific UV Absorbance 254 nm
                   #"70961", # GPP m3
                   #"70962", # GPP m2
                   #"70965", # NPP m3
                   #"70966", # NPP m2
                   #"72240", # CO2
                   #"99134") # DOC

dfLong_C <- readNWISqw(siteIDs, parameterCd_C, 
                       startDate, endDate)

p <- ggplot(dfLong_C, aes(x=sample_dt, y=(result_va), colour =as.factor(site_no), shape=(parm_cd))) + 
  geom_point(alpha = 0.5) + facet_grid(.~site_no)

dfWide_C <- readNWISqw(siteIDs, parameterCd_C,
                       startDate, endDate, reshape=TRUE)
summary(dfWide_C)
summary(stream_dat)

stream_dat3 <- left_join(stream_dat2, dfWide_C[c("site_no", "sample_dt", "sample_tm",
                                                 "result_va_00405", "result_va_00681")],
                         by = c('site_no'= 'site_no', 'Date' = 'sample_dt'))
summary(stream_dat3)

# Rename columns
names(stream_dat3)
# colnames(stream_dat3)[31] <- "dissolvedCO2_00405"
# colnames(stream_dat3)[32] <- "OrgC_00681.F"

# Physical parameter codes:
parameterCd_Phy <- c("00065", 
                     "00010", 
                     #"00045", # precip absent 
                     "00400") #

dfLong_Phy <- readNWISqw(siteIDs, parameterCd_Phy, 
                     startDate, endDate)

p <- ggplot(dfLong_Phy, aes(x=sample_dt, y=(result_va), colour =as.factor(site_no), shape=(parm_cd))) + 
  geom_point(alpha = 0.5) + facet_grid(.~site_no)

dfWide_Phy <- readNWISqw(siteIDs, parameterCd_Phy,
                       startDate, endDate, reshape=TRUE)
summary(dfWide_Phy)
summary(stream_dat)

stream_dat4 <- left_join(stream_dat3, dfWide_Phy[c("site_no", "sample_dt", "sample_tm",
                                                 "result_va_00010", "result_va_00400",
                                                 "result_va_00065")],
                         by = c('site_no'= 'site_no', 'Date' = 'sample_dt'))
summary(stream_dat4)

# Rename columns
names(stream_dat4)
# colnames(stream_dat4)[34] <- "Temp_00010"
# colnames(stream_dat4)[35] <- "pH_00400"
# colnames(stream_dat4)[36] <- "Gheight_00065"

# write.csv(stream_dat4, paste0(outputDir, "/MSM_WQdat.csv")) 


# # Chlorophyll parameter codes:
# #    * No data
# parameterCd_Chl <- c("31883", 
#                      "31884",
#                      "31885",
#                      "31886",
#                      "31887",
#                      "31888",
#                      "32209",
#                      "32211",
#                      "32223",
#                      "32242",
#                      "32269",
#                      "32284",
#                      "32285",
#                      "32286",
#                      "32287",
#                      "32288",
#                      "32334",
#                      "32735",
#                      "62361",
#                      "63763",
#                      "65228",
#                      "65229",
#                      "70952",
#                      "70953",
#                      "70954",
#                      "70955",
#                      "92209",
#                      "92217"
#                      )
# 
# dfLong_Chl <- readNWISqw(siteIDs, parameterCd_Chl, 
#                          startDate, endDate)
# 
# p <- ggplot(dfLong_Chl, aes(x=sample_dt, y=(result_va), colour =as.factor(site_no), shape=(parm_cd))) + 
#   geom_point(alpha = 0.5) + facet_grid(.~site_no)













type <- "Stream"
sites <- whatWQPsamples(countycode="US:55:025",siteType=type)
# }
# \donttest{

type <- "Stream"
sites <- whatWQPmetrics(countycode="US:55:025",siteType=type)
lakeSites <- whatWQPmetrics(siteType = "Lake, Reservoir, Impoundment", statecode = "US:55")
# }
# \donttest{
site1 <- whatWQPsites(siteid="USGS-01594440")

type <- "Stream"
sites <- whatWQPsites(countycode="US:55:025",
                      characteristicName = "Phosphorus",
                      siteType=type)
# }
# \donttest{
site1 <- readWQPsummary(siteid="USGS-07144100",
                        summaryYears=5,
                        dataProfile="periodOfRecord")
# Pretty slow:
#state1 <- readWQPsummary(statecode="NJ",
#                          dataProfile="periodOfRecord")
# }

## ---------------------------
##
# Aggregate by all sites


stream_dat <- rbind(qwData1, qwData2, qwData3, qwData4, qwData5, qwData6, qwData7,
                    qwData8, qwData9, qwData10, qwData11, qwData12, qwData13,
                    qwData14, qwData15, qwData16, qwData17)
head(stream_dat)
#NHD <- select(NHD, c("SiteID", "LON_NHD", "LAT_NHD", "HUC", "STATE_CD", "DA_SQ_MILE"))
NHD <- select(stream_dat, c("site_no", "dec_long_va", "dec_lat_va", "huc_cd", "state_cd", "drain_area_va"))

# colnames(NHD)[1] <- "SiteID"
# colnames(NHD)[2] <- "LON_NHD"
# colnames(NHD)[3] <- "LAT_NHD"
# colnames(NHD)[4] <- "HUC"
# colnames(NHD)[5] <- "STATE_CD"
# colnames(NHD)[6] <- "DA_SQ_MILE"



###
point <- sf::st_sfc(sf::st_point(c(-119.6601726, 38.7168505)), crs = 4326)
discover_nhdplus_id(point)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10308789")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10308794")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10310400")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10310500")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10311100")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10311200")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10336645")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10336660")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10336676")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10336700")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10343500")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10347600")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10348460")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-10348850")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-11313477")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-11401165")
discover_nhdplus_id(nldi_feature = nldi_nwis)

nldi_nwis <- list(featureSource = "nwissite", featureID = "USGS-11404240")
discover_nhdplus_id(nldi_feature = nldi_nwis)

?discover_nhdplus_id

## Bring in time series data from the project so we know what sites we need to assign ComID's to
dat <- read.csv(paste0(inputDir,"/StreamGauges_MSM.csv"))
## Separate USGS and WQP data because we will process them differently
USGS <- subset(dat, dat$Source == "USGS")
#WQP <- subset(dat, dat$Source == "WQP")


# Bring in the NHD Attribute Data 
# downloaded at https://www.sciencebase.gov/catalog/item/5669a79ee4b08895842a1d47
# National Land Cover Database (2016)  https://www.sciencebase.gov/catalog/item/5d66b3b6e4b0c4f70cefb11d
# reach catchments accumulated upstream proportional land cover through the river network
nlcd_acc <- read.csv(paste0(inputDir,"/NLCD16_ACC_CONUS.txt"))
 
# Subset NLCD by our sites of interest
nlcd_acc <- subset(nlcd_acc, nlcd_acc$COMID %in% dat$COMID) # the number of rows should be = to the number of rows in usgs_comid
# Create one df with all necessary info
usgs_nlcd <- merge(dat, nlcd_acc, by = "COMID", all = TRUE)
# Rename columns to describe land use classes
names(usgs_nlcd)
colnames(usgs_nlcd) <- c("COMID", "Source","SiteID", "Latitude", "Longitude","Drainage.area..mi.2.",
                         "Link","OpenWater_pct", "PerennialIceSnow_pct", 
                         "DevelopedOpenSpace_pct", "DevelopedLowIntensity_pct", 
                         "DevelopedMedIntensity_pct", "DevelopedHiIntensity_pct", "BarrenLand_pct",
                         "DeciduousForest_pct", "EvergreenForest_pct", "MixedForest_pct",
                         "ShrubScrub_pct", "GrasslandHerbaceous_pct", "PastureHay_pct",
                         "CultivatedCrops_pct", "WoodyWetlands_pct", "EmergentHerbWetlands_pct",
                         "NoData")
summary(usgs_nlcd)




### https://www.sciencebase.gov/catalog/item/5703e35be4b0328dcb825562
# reach catchments accumulated upstream proportional Olson Geology Types attributes through the river network
nlcd_geoOGT <- read.csv(paste0(inputDir,"/OLSON_CAT_CONUS.TXT"))

# Subset NLCD by our sites of interest
nlcd_geoOGT1 <- subset(nlcd_geoOGT, nlcd_geoOGT$COMID %in% dat$COMID) # the number of rows should be = to the number of rows in usgs_comid

# Names 
#(https://www.sciencebase.gov/catalog/file/get/5703e35be4b0328dcb825562?f=__disk__4a%2F88%2Ff9%2F4a88f9a60dbdf314dc01ed55fe9597fbc0c9753f&transform=1&allowOpen=true)
# CAT_OLSON_UCS: Estimated mean lithological compressive strength, measured as uniaxial compressive strength (in megaPascals, MPa
# CAT_OLSON_PERM: Estimated hydraulic conductivity (in micrometers per second) of surface or near surface geology


### https://www.sciencebase.gov/catalog/item/5703f6b5e4b0328dcb826d06
# reach catchments accumulated upstream proportional Generalized Geology Type attributes through the river network
nlcd_geoGGT <- read.csv(paste0(inputDir,"/BUSHREED_ACC_CONUS.txt"))

# Subset NLCD by our sites of interest
nlcd_geoGGT1 <- subset(nlcd_geoGGT, nlcd_geoGGT$COMID %in% dat$COMID) # the number of rows should be = to the number of rows in usgs_comid
# Names 
#(https://www.sciencebase.gov/catalog/file/get/5703f6b5e4b0328dcb826d06?f=__disk__87%2F59%2Fac%2F8759ac764197b53a525dbad8270a975b35b27b07&transform=1&allowOpen=true)
# ACC_BUSHREED2: Accumulated upstream percent area with generalized geology type granitic, light-colored plutonic rocks composed chiefly of quartz and feldspar and small amounts of mica, hornblende, and other minerals.
# ACC_BUSHREED5: generalized geology type sedimentary
# ACC_BUSHREED6: generalized geology type volcanic, Finely crystalline or glassy igneous rocks that form by volcanic action at or near the surface
# ACC_BUSHREED8: Water 

# Change column names:
names(nlcd_geoGGT1)
# colnames(nlcd_geoGGT1)[3] <- "GGT_granitic"
# colnames(nlcd_geoGGT1)[6] <- "GGT_sedimentary"
# colnames(nlcd_geoGGT1)[7] <- "GGT_volcanic"


usgs_nlcd1 <- left_join(usgs_nlcd, nlcd_geoGGT1[c("COMID", "GGT_granitic", "GGT_sedimentary",
                                                   "GGT_volcanic")],
                         by = c('COMID'= 'COMID'))
summary(usgs_nlcd1)


### https://www.sciencebase.gov/catalog/item/57bf5c07e4b0f2f0ceb75b1b
# reach catchments accumulated upstream 2015 precip attributes through the river network
nlcd_precip <- read.csv(paste0(inputDir,"/PPT2015_ANN_CONUS.txt"))

# Subset NLCD by our sites of interest
nlcd_precip1 <- subset(nlcd_precip, nlcd_precip$COMID %in% dat$COMID) # the number of rows should be = to the number of rows in usgs_comid

# Names 
# CAT_PPT2015_ANN:  average annual precipitation values in millimeters 
# ACC_PPT2015_ANN:  Accumulated average annual precipitation (millimeters) for all upstream 
# TOT_PPT2015_ANN: Accumulated average annual precipitation (millimeters) for all upstream NHDPlus version 2 catchments based on total upstream routing 

# Change column names:
names(nlcd_precip1)
# colnames(nlcd_precip1)[2] <- "AveAnnPrecip_mm"
# colnames(nlcd_precip1)[4] <- "TotAnnPrecip_mm"

usgs_nlcd2 <- left_join(usgs_nlcd1, nlcd_precip1[c("COMID", "AveAnnPrecip_mm", "TotAnnPrecip_mm")],
                        by = c('COMID'= 'COMID'))
summary(usgs_nlcd2)


### https://www.sciencebase.gov/catalog/item/5703f6b5e4b0328dcb826d06
# reach catchments accumulated upstream proportional elevation through the river network
nlcd_basin <- read.csv(paste0(inputDir,"/BASIN_CHAR_CAT_CONUS.TXT"))

# Subset NLCD by our sites of interest
nlcd_basin1 <- subset(nlcd_basin, nlcd_basin$COMID %in% dat$COMID) # the number of rows should be = to the number of rows in usgs_comid
# Names 
# CAT_BASIN_AREA: flowline catchment area in square kilometers.
# CAT_BASIN_SLOPE: flowline catchment's average slope in percent
# CAT_ELEV_MEAN: flowline catchment's mean elevation in meters
# CAT_ELEV_MAX: flowline catchment's maximum elevation in meters
# CAT_STREAM_SLOPE: flowline's average slope in percent.
# CAT_STREAM_LENGTH: flowline's length in kilometers taken directly

# Change column names:
names(nlcd_basin1)

usgs_nlcd3 <- left_join(usgs_nlcd2, nlcd_basin1[c("COMID", "CAT_BASIN_AREA", "CAT_BASIN_SLOPE",
                                                  "CAT_ELEV_MEAN", "CAT_ELEV_MIN", "CAT_ELEV_MAX",
                                                  "CAT_STREAM_SLOPE", "CAT_STREAM_LENGTH")],
                        by = c('COMID'= 'COMID'))
summary(usgs_nlcd3)


### https://www.sciencebase.gov/catalog/item/57867c33e4b0e02680c14fff
# reach catchments accumulated upstream proportional geologic attributes through the river network
nlcd_geo <- read.csv(paste0(inputDir,"/BEDPERM_ACC_CONUS.TXT"))

# Subset NLCD by our sites of interest
nlcd_geo1 <- subset(nlcd_geo, nlcd_geo$COMID %in% dat$COMID) # the number of rows should be = to the number of rows in usgs_comid

# Names 
#(https://www.sciencebase.gov/catalog/file/get/57867c33e4b0e02680c14fff?f=__disk__79%2F5a%2Fb4%2F795ab402ff64c349719466c4a9938d05fba70022&transform=1&allowOpen=true)
# ACC_BEDPERM_1: Percent of all upstream NHDPlus version 2 flowline catchments whose bedrock permeability class is not a principal aquifer
# ACC_BEDPERM_6: Percent of all upstream NHDPlus version 2 flowline catchments whose bedrock permeability class is Unconsolidated sand and gravel, based on divergence routing.

# Change column names:
names(nlcd_geo1)
# colnames(nlcd_geo1)[2] <- "PerNotAquifer"
# colnames(nlcd_geo1)[7] <- "PerSandGravel"

usgs_nlcd4 <- left_join(usgs_nlcd3, nlcd_geo1[c("COMID", "PerNotAquifer", "PerSandGravel")],
                        by = c('COMID'= 'COMID'))
summary(usgs_nlcd4)


# write.csv(usgs_nlcd4, paste0(outputDir, "/MSM_AllAttributesNHD.csv")) 


## Figures of data resolution:
names(stream_dat4)
p <- ggplot(stream_dat4, aes(x=Date, y=(discharge_00060), colour =as.factor(station_nm))) + 
  geom_point(alpha = 0.5) + facet_grid(station_nm~.)


# 2. Flag temperature adn C7 values:
stream_dat4_sum= stream_dat4 %>% 
  mutate(year=lubridate::year(Date))%>%
  arrange(site_no, year)%>%
  group_by(site_no, station_nm, year)%>% 
  summarise(
    "mn.discharge"= mean(discharge_00060, na.rm = TRUE),          
    "sd.discharge"= sd(discharge_00060, na.rm = TRUE),
    "mn.Temp"= mean(Temp_00010, na.rm = TRUE),
    "sd.Temp"= sd(Temp_00010, na.rm = TRUE),
    "mn.pH"= mean(pH_00400, na.rm = TRUE),          
    "sd.pH"= sd(pH_00400, na.rm = TRUE),
    "Drainage.area"= mean(mean(drain_area_va, na.rm = TRUE)))




stream_dat4_sum1= stream_dat4 %>% 
  group_by(site_no, station_nm)%>% 
  summarise(
    "mn.discharge"= mean(discharge_00060, na.rm = TRUE),          
    "sd.discharge"= sd(discharge_00060, na.rm = TRUE),
    "mn.Temp"= mean(Temp_00010, na.rm = TRUE),
    "sd.Temp"= sd(Temp_00010, na.rm = TRUE),
    "mn.pH"= mean(pH_00400, na.rm = TRUE),          
    "sd.pH"= sd(pH_00400, na.rm = TRUE),
    "Drainage.area"= mean(mean(drain_area_va, na.rm = TRUE)))

# write.csv(stream_dat4_sum1, paste0(outputDir, "/MSM_WQsummary.csv")) 


p <- ggplot(stream_dat4_sum, aes(x=year, y=(mn.discharge), colour =as.factor(station_nm))) + 
  geom_point(alpha = 0.5) + facet_grid(station_nm~.)

p <- ggplot(stream_dat4_sum, aes(x=year, y=(mn.Temp), colour =as.factor(station_nm))) + 
  geom_point(alpha = 0.5) + facet_grid(station_nm~.)

