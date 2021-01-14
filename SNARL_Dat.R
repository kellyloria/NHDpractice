

inUrl7  <- "https://pasta.lternet.edu/package/data/eml/edi/577/2/eae835e83c0494a376229f254f7d3392" 
infile7 <- tempfile()
try(download.file(inUrl7,infile7,method="curl"))
if (is.na(file.size(infile7))) download.file(inUrl7,infile7,method="auto")


dt7 <-read.csv(infile7,header=F 
               ,skip=1
               ,sep=","  
               ,quot='"' 
               , col.names=c(
                 "lake_id",     
                 "survey_date",     
                 "stream_nos",     
                 "stream_type",     
                 "stream_width",     
                 "stream_depth",     
                 "stream_fish_presence",     
                 "stream_barrier_distance",     
                 "stream_spawning_habitat",     
                 "stream_spawning_fish",     
                 "stream_redds",     
                 "stream_fry",     
                 "assoc_lake_spawning_habitat"    ), check.names=TRUE)

unlink(infile7)

# Fix any interval or ratio columns mistakenly read in as nominal and nominal columns read as numeric or dates read as strings

if (class(dt7$lake_id)=="factor") dt7$lake_id <-as.numeric(levels(dt7$lake_id))[as.integer(dt7$lake_id) ]               
if (class(dt7$lake_id)=="character") dt7$lake_id <-as.numeric(dt7$lake_id)                                   
# attempting to convert dt7$survey_date dateTime string to R date structure (date or POSIXct)                                
tmpDateFormat<-"%Y-%m-%d"
tmp7survey_date<-as.Date(dt7$survey_date,format=tmpDateFormat)
# Keep the new dates only if they all converted correctly
if(length(tmp7survey_date) == length(tmp7survey_date[!is.na(tmp7survey_date)])){dt7$survey_date <- tmp7survey_date } else {print("Date conversion failed for dt7$survey_date. Please inspect the data and do the date conversion yourself.")}                                                                    
rm(tmpDateFormat,tmp7survey_date) 
if (class(dt7$stream_nos)=="factor") dt7$stream_nos <-as.numeric(levels(dt7$stream_nos))[as.integer(dt7$stream_nos) ]               
if (class(dt7$stream_nos)=="character") dt7$stream_nos <-as.numeric(dt7$stream_nos)
if (class(dt7$stream_type)!="factor") dt7$stream_type<- as.factor(dt7$stream_type)
if (class(dt7$stream_width)=="factor") dt7$stream_width <-as.numeric(levels(dt7$stream_width))[as.integer(dt7$stream_width) ]               
if (class(dt7$stream_width)=="character") dt7$stream_width <-as.numeric(dt7$stream_width)
if (class(dt7$stream_depth)=="factor") dt7$stream_depth <-as.numeric(levels(dt7$stream_depth))[as.integer(dt7$stream_depth) ]               
if (class(dt7$stream_depth)=="character") dt7$stream_depth <-as.numeric(dt7$stream_depth)
if (class(dt7$stream_fish_presence)!="factor") dt7$stream_fish_presence<- as.factor(dt7$stream_fish_presence)
if (class(dt7$stream_barrier_distance)=="factor") dt7$stream_barrier_distance <-as.numeric(levels(dt7$stream_barrier_distance))[as.integer(dt7$stream_barrier_distance) ]               
if (class(dt7$stream_barrier_distance)=="character") dt7$stream_barrier_distance <-as.numeric(dt7$stream_barrier_distance)
if (class(dt7$stream_spawning_habitat)=="factor") dt7$stream_spawning_habitat <-as.numeric(levels(dt7$stream_spawning_habitat))[as.integer(dt7$stream_spawning_habitat) ]               
if (class(dt7$stream_spawning_habitat)=="character") dt7$stream_spawning_habitat <-as.numeric(dt7$stream_spawning_habitat)
if (class(dt7$stream_spawning_fish)!="factor") dt7$stream_spawning_fish<- as.factor(dt7$stream_spawning_fish)
if (class(dt7$stream_redds)!="factor") dt7$stream_redds<- as.factor(dt7$stream_redds)
if (class(dt7$stream_fry)!="factor") dt7$stream_fry<- as.factor(dt7$stream_fry)
if (class(dt7$assoc_lake_spawning_habitat)=="factor") dt7$assoc_lake_spawning_habitat <-as.numeric(levels(dt7$assoc_lake_spawning_habitat))[as.integer(dt7$assoc_lake_spawning_habitat) ]               
if (class(dt7$assoc_lake_spawning_habitat)=="character") dt7$assoc_lake_spawning_habitat <-as.numeric(dt7$assoc_lake_spawning_habitat)

# Convert Missing Values to NA for non-dates

dt7$stream_width <- ifelse((trimws(as.character(dt7$stream_width))==trimws("NA")),NA,dt7$stream_width)               
suppressWarnings(dt7$stream_width <- ifelse(!is.na(as.numeric("NA")) & (trimws(as.character(dt7$stream_width))==as.character(as.numeric("NA"))),NA,dt7$stream_width))
dt7$stream_depth <- ifelse((trimws(as.character(dt7$stream_depth))==trimws("NA")),NA,dt7$stream_depth)               
suppressWarnings(dt7$stream_depth <- ifelse(!is.na(as.numeric("NA")) & (trimws(as.character(dt7$stream_depth))==as.character(as.numeric("NA"))),NA,dt7$stream_depth))
dt7$stream_barrier_distance <- ifelse((trimws(as.character(dt7$stream_barrier_distance))==trimws("NA")),NA,dt7$stream_barrier_distance)               
suppressWarnings(dt7$stream_barrier_distance <- ifelse(!is.na(as.numeric("NA")) & (trimws(as.character(dt7$stream_barrier_distance))==as.character(as.numeric("NA"))),NA,dt7$stream_barrier_distance))
dt7$stream_spawning_habitat <- ifelse((trimws(as.character(dt7$stream_spawning_habitat))==trimws("NA")),NA,dt7$stream_spawning_habitat)               
suppressWarnings(dt7$stream_spawning_habitat <- ifelse(!is.na(as.numeric("NA")) & (trimws(as.character(dt7$stream_spawning_habitat))==as.character(as.numeric("NA"))),NA,dt7$stream_spawning_habitat))
dt7$assoc_lake_spawning_habitat <- ifelse((trimws(as.character(dt7$assoc_lake_spawning_habitat))==trimws("NA")),NA,dt7$assoc_lake_spawning_habitat)               
suppressWarnings(dt7$assoc_lake_spawning_habitat <- ifelse(!is.na(as.numeric("NA")) & (trimws(as.character(dt7$assoc_lake_spawning_habitat))==as.character(as.numeric("NA"))),NA,dt7$assoc_lake_spawning_habitat))

# Here is the structure of the input data frame:
str(dt7)                            
attach(dt7)                            
# The analyses below are basic descriptions of the variables. After testing, they should be replaced.                 

summary(lake_id)
summary(survey_date)
summary(stream_nos)
summary(stream_type)
summary(stream_width)
summary(stream_depth)
summary(stream_fish_presence)
summary(stream_barrier_distance)
summary(stream_spawning_habitat)
summary(stream_spawning_fish)
summary(stream_redds)
summary(stream_fry)
summary(assoc_lake_spawning_habitat) 
# Get more details on character variables

summary(as.factor(dt7$stream_type)) 
summary(as.factor(dt7$stream_fish_presence)) 
summary(as.factor(dt7$stream_spawning_fish)) 
summary(as.factor(dt7$stream_redds)) 
summary(as.factor(dt7$stream_fry))
detach(dt7)               

