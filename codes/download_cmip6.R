#### OCEANCLIM - Bioclimatic SST variables for the global ocean ####
## Author: Silas C. Principe - silasprincipe@usp.br

### Download CMIP6 files ###
# Note: this file was created to be run as source
# To disable verbosity put verbose = FALSE on the next line
verbose = TRUE

# Load fs package for easier dir creation
library(fs)

# model = model for which data should be downloaded (one of MRI, CESM or GFDL)
# others can be added - see details on the main code
# outf = base output folder (files will be on 'outf/model')
get.data <- function(model, outf = "raw"){
        
        model <- tolower(model)
        
        if ("cesm" %in% model) {
                ### CESM ----
                if (verbose) {cat("Downloading", model, "files \n")}
                dir_create(paste(outf, model, sep = "/"))
                setwd(paste(outf, model, sep = "/"))
                
                system("wget http://aims3.llnl.gov/thredds/fileServer/css03_data/CMIP6/CMIP/NCAR/CESM2-WACCM/historical/r1i1p1f1/Omon/tos/gn/v20190808/tos_Omon_CESM2-WACCM_historical_r1i1p1f1_gn_185001-201412.nc")
                system("wget https://esgf-data1.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp126/r1i1p1f1/Omon/tos/gn/v20210211/tos_Omon_CESM2-WACCM_ssp126_r1i1p1f1_gn_201501-210012.nc")
                system("wget http://aims3.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp245/r1i1p1f1/Omon/tos/gn/v20190815/tos_Omon_CESM2-WACCM_ssp245_r1i1p1f1_gn_201501-206412.nc")
                system("wget http://aims3.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp245/r1i1p1f1/Omon/tos/gn/v20190815/tos_Omon_CESM2-WACCM_ssp245_r1i1p1f1_gn_206501-210012.nc")
                system("wget http://aims3.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp370/r1i1p1f1/Omon/tos/gn/v20190815/tos_Omon_CESM2-WACCM_ssp370_r1i1p1f1_gn_201501-206412.nc")
                system("wget http://aims3.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp370/r1i1p1f1/Omon/tos/gn/v20190815/tos_Omon_CESM2-WACCM_ssp370_r1i1p1f1_gn_206501-210012.nc")
                system("wget https://esgf-data1.llnl.gov/thredds/fileServer/css03_data/CMIP6/ScenarioMIP/NCAR/CESM2-WACCM/ssp585/r1i1p1f1/Omon/tos/gn/v20200702/tos_Omon_CESM2-WACCM_ssp585_r1i1p1f1_gn_201501-210012.nc")
                
                setwd("../..")
        }
        
        if ("gfdl" %in% model) {
                if (verbose) {cat("Downloading", model, "files \n")}
                dir_create(paste(outf, model, sep = "/"))
                setwd(paste(outf, model, sep = "/"))
                
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
        }
        
        if ("mri" %in% model) {
                if (verbose) {cat("Downloading", model, "files \n")}
                dir_create(paste(outf, model, sep = "/"))
                setwd(paste(outf, model, sep = "/"))
                
                system("wget http://esgf-data2.diasjp.net/thredds/fileServer/esg_dataroot/CMIP6/CMIP/MRI/MRI-ESM2-0/historical/r1i1p1f1/Omon/tos/gn/v20190904/tos_Omon_MRI-ESM2-0_historical_r1i1p1f1_gn_185001-201412.nc")
                system("wget http://esgf-data2.diasjp.net/thredds/fileServer/esg_dataroot/CMIP6/ScenarioMIP/MRI/MRI-ESM2-0/ssp126/r1i1p1f1/Omon/tos/gn/v20191108/tos_Omon_MRI-ESM2-0_ssp126_r1i1p1f1_gn_201501-210012.nc")
                system("wget http://esgf-data2.diasjp.net/thredds/fileServer/esg_dataroot/CMIP6/ScenarioMIP/MRI/MRI-ESM2-0/ssp245/r1i1p1f1/Omon/tos/gn/v20190904/tos_Omon_MRI-ESM2-0_ssp245_r1i1p1f1_gn_201501-210012.nc")
                system("wget http://esgf-data2.diasjp.net/thredds/fileServer/esg_dataroot/CMIP6/ScenarioMIP/MRI/MRI-ESM2-0/ssp370/r1i1p1f1/Omon/tos/gn/v20190904/tos_Omon_MRI-ESM2-0_ssp370_r1i1p1f1_gn_201501-210012.nc")
                system("wget http://esgf-data2.diasjp.net/thredds/fileServer/esg_dataroot/CMIP6/ScenarioMIP/MRI/MRI-ESM2-0/ssp585/r1i1p1f1/Omon/tos/gn/v20191108/tos_Omon_MRI-ESM2-0_ssp585_r1i1p1f1_gn_201501-210012.nc")
                
                setwd("../..")
        }
        
        # If you want, you can add other models following the same pattern
        # links to files can be found in https://esgf-node.llnl.gov/search/cmip6/
        
        if (verbose) {cat("Downloads concluded. \n")}
        if (verbose) {print(list.files("raw", recursive = T))}
        
}