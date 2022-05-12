## Load all datasets 

# Hyytiala ##

# Daily
hyyt_daily <- read.csv("~/RDM/DATA/hyytiala/ICOS_drought2018data_hyyt/FLX_FI-Hyy_FLUXNET2015_FULLSET_1996-2018_beta-3/FLX_FI-Hyy_FLUXNET2015_FULLSET_DD_1996-2018_beta-3.csv")


#Sodankyla

# Hourly
sod_hourly_flux <- read_csv("/exports/csce/datastore/geos/users/s2139773/DATA/sodankyla/LCC_sod_data/LCC_sod_hourly_flux.csv", 
                                         col_types = cols(`Date (UTC end of averaging period)` = col_datetime(format = "%Y-%m-%d %H:%M:%S")))


sod_hourly_met <- read_csv("/exports/csce/datastore/geos/users/s2139773/DATA/sodankyla/LCC_sod_data/LCC_sod_hourly_met_rmROW1.csv", 
                           col_types = cols(SWPa020 = col_double(), 
                                            SWPb020 = col_double(), STa005 = col_double(), 
                                            STa010 = col_double(), STa030 = col_double(), 
                                            STa050 = col_double(), STa100 = col_double(), 
                                            STb005 = col_double(), STb010 = col_double(), 
                                            STb020 = col_double(), STb050 = col_double(), 
                                            STb100 = col_double(), SMb005 = col_double(), 
                                            SMb010 = col_double(), SMb020 = col_double(), 
                                            SMb050 = col_double()))


# Kentarova

Kenttarova_hourly <- read_csv("/exports/csce/datastore/geos/users/s2139773/DATA/kenttarova/Kenttärova_gapfilled.csv", 
                                     col_types = cols(Date = col_datetime(format = "%d/%m/%Y %H:%M")))


# Convert Sod and Kent hourly -> daily 
