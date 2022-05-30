#### OCEANCLIM - Bioclimatic SST variables for the global ocean ####
## Author: Silas C. Principe - silasprincipe@usp.br

### Download CMIP6 files ###
# Note: this file was created to be run as source
# To disable verbosity put verbose = FALSE on the next line
verbose = TRUE

# Load fs package for easier dir creation
library(fs)

### MIROC6 ----
if (verbose) {cat("Downloading MIROC6 files \n")}
dir_create("raw/miroc")
setwd("raw/miroc")

system("wget http://esgf-data2.diasjp.net/thredds/fileServer/esg_dataroot/CMIP6/CMIP/MIROC/MIROC6/historical/r1i1p1f1/Omon/tos/gn/v20181212/tos_Omon_MIROC6_historical_r1i1p1f1_gn_195001-201412.nc")
system("wget http://esgf-data2.diasjp.net/thredds/fileServer/esg_dataroot/CMIP6/ScenarioMIP/MIROC/MIROC6/ssp126/r1i1p1f1/Omon/tos/gn/v20190627/tos_Omon_MIROC6_ssp126_r1i1p1f1_gn_201501-210012.nc")
system("wget http://esgf-data2.diasjp.net/thredds/fileServer/esg_dataroot/CMIP6/ScenarioMIP/MIROC/MIROC6/ssp245/r1i1p1f1/Omon/tos/gn/v20190627/tos_Omon_MIROC6_ssp245_r1i1p1f1_gn_201501-210012.nc")
system("wget http://esgf-data2.diasjp.net/thredds/fileServer/esg_dataroot/CMIP6/ScenarioMIP/MIROC/MIROC6/ssp370/r1i1p1f1/Omon/tos/gn/v20190627/tos_Omon_MIROC6_ssp370_r1i1p1f1_gn_201501-210012.nc")
system("wget http://esgf-data2.diasjp.net/thredds/fileServer/esg_dataroot/CMIP6/ScenarioMIP/MIROC/MIROC6/ssp585/r1i1p1f1/Omon/tos/gn/v20190627/tos_Omon_MIROC6_ssp585_r1i1p1f1_gn_201501-210012.nc")

setwd("../..")

### IPSL ----
if (verbose) {cat("Downloading IPSL files \n")}
dir_create("raw/ipsl")
setwd("raw/ipsl")

system("wget http://vesg.ipsl.upmc.fr/thredds/fileServer/cmip6/CMIP/IPSL/IPSL-CM6A-LR/historical/r1i1p1f1/Omon/tos/gn/v20180803/tos_Omon_IPSL-CM6A-LR_historical_r1i1p1f1_gn_185001-201412.nc")
system("wget http://vesg.ipsl.upmc.fr/thredds/fileServer/cmip6/ScenarioMIP/IPSL/IPSL-CM6A-LR/ssp370/r1i1p1f1/Omon/tos/gn/v20190119/tos_Omon_IPSL-CM6A-LR_ssp370_r1i1p1f1_gn_201501-210012.nc")
system("wget http://vesg.ipsl.upmc.fr/thredds/fileServer/cmip6/ScenarioMIP/IPSL/IPSL-CM6A-LR/ssp245/r1i1p1f1/Omon/tos/gn/v20190119/tos_Omon_IPSL-CM6A-LR_ssp245_r1i1p1f1_gn_201501-210012.nc")
system("wget http://vesg.ipsl.upmc.fr/thredds/fileServer/cmip6/ScenarioMIP/IPSL/IPSL-CM6A-LR/ssp126/r1i1p1f1/Omon/tos/gn/v20190903/tos_Omon_IPSL-CM6A-LR_ssp126_r1i1p1f1_gn_201501-210012.nc")
system("wget http://vesg.ipsl.upmc.fr/thredds/fileServer/cmip6/ScenarioMIP/IPSL/IPSL-CM6A-LR/ssp585/r1i1p1f1/Omon/tos/gn/v20190903/tos_Omon_IPSL-CM6A-LR_ssp585_r1i1p1f1_gn_201501-210012.nc")

setwd("../..")

### CESM ----
if (verbose) {cat("Downloading CESM files \n")}
dir_create("raw/cesm")
setwd("raw/cesm")

system("wget http://aims3.llnl.gov/thredds/fileServer/css03_data/CMIP6/CMIP/NCAR/CESM2-WACCM/historical/r1i1p1f1/Omon/tos/gn/v20190808/tos_Omon_CESM2-WACCM_historical_r1i1p1f1_gn_185001-201412.nc")
system("wget https://esgf-data1.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp126/r1i1p1f1/Omon/tos/gn/v20210211/tos_Omon_CESM2-WACCM_ssp126_r1i1p1f1_gn_201501-210012.nc")
system("wget http://aims3.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp245/r1i1p1f1/Omon/tos/gn/v20190815/tos_Omon_CESM2-WACCM_ssp245_r1i1p1f1_gn_201501-206412.nc")
system("wget http://aims3.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp245/r1i1p1f1/Omon/tos/gn/v20190815/tos_Omon_CESM2-WACCM_ssp245_r1i1p1f1_gn_206501-210012.nc")
system("wget http://aims3.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp370/r1i1p1f1/Omon/tos/gn/v20190815/tos_Omon_CESM2-WACCM_ssp370_r1i1p1f1_gn_201501-206412.nc")
system("wget http://aims3.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp370/r1i1p1f1/Omon/tos/gn/v20190815/tos_Omon_CESM2-WACCM_ssp370_r1i1p1f1_gn_206501-210012.nc")
system("wget https://esgf-data1.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp585/r1i1p1f1/Omon/tos/gn/v20200702/tos_Omon_CESM2-WACCM_ssp585_r1i1p1f1_gn_201501-210012.nc")

setwd("../..")

### GFDL ----
if (verbose) {cat("Downloading GFDL files \n")}
dir_create("raw/gfdl")
setwd("raw/gfdl")

system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/Omon/tos/gn/v20190726/tos_Omon_GFDL-ESM4_historical_r1i1p1f1_gn_199001-200912.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/CMIP/NOAA-GFDL/GFDL-ESM4/historical/r1i1p1f1/Omon/tos/gn/v20190726/tos_Omon_GFDL-ESM4_historical_r1i1p1f1_gn_201001-201412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp126/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp126_r1i1p1f1_gn_203501-205412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp126/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp126_r1i1p1f1_gn_205501-207412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp126/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp126_r1i1p1f1_gn_207501-209412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp126/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp126_r1i1p1f1_gn_209501-210012.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp245/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp245_r1i1p1f1_gn_203501-205412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp245/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp245_r1i1p1f1_gn_205501-207412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp245/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp245_r1i1p1f1_gn_207501-209412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp245/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp245_r1i1p1f1_gn_209501-210012.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp370_r1i1p1f1_gn_203501-205412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp370_r1i1p1f1_gn_205501-207412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp370_r1i1p1f1_gn_207501-209412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp370/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp370_r1i1p1f1_gn_209501-210012.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp585/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp585_r1i1p1f1_gn_203501-205412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp585/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp585_r1i1p1f1_gn_205501-207412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp585/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp585_r1i1p1f1_gn_207501-209412.nc")
system("wget http://esgdata.gfdl.noaa.gov/thredds/fileServer/gfdl_dataroot4/ScenarioMIP/NOAA-GFDL/GFDL-ESM4/ssp585/r1i1p1f1/Omon/tos/gn/v20180701/tos_Omon_GFDL-ESM4_ssp585_r1i1p1f1_gn_209501-210012.nc")

setwd("../..")

if (verbose) {cat("Downloads concluded. \n")}
if (verbose) {print(list.files("raw", recursive = T))}