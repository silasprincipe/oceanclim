#### OCEANCLIM - Bioclimatic SST variables for the global ocean ####
## Author: Silas C. Principe - silasprincipe@usp.br

### Prepare CMIP6 files ###

# Creates a function to prepare the historical data using CDO
prepare.hist <- function(model,
                         folder = NULL,
                         outf = NULL,
                         lonlat = "-180,180,-90,90",
                         remap = NULL,
                         reso = "low",
                         years = "2000/2014") {
        
        if (is.null(reso)){
                reso <- "std"
        }
        
        mod <- tolower(model)
        
        if (is.null(folder)){
                folder <- paste0("raw/", mod)
        }
        
        if (is.null(outf)) {
                outf <- mod
                dir_create(outf)
        }
        
        upfiles <- list.files(outf)
        
        fnam <- paste0("tos_hist_", reso, "_", mod,".nc")                       
        
        if(!fnam %in% upfiles){
                if (is.null(remap)){
                        if (is.null(reso)){
                                stop("One of resolution or remap should be given.")
                        } else {
                                if (reso == "low" | reso == "bio-oracle"){
                                        remap <- "4320x2160"
                                        reso.print <- "low (0.083) - compatible with bio-oracle"
                                }
                                if (reso == "mean" | reso == "coral-watch"){
                                        remap <- "7200x3600"
                                        reso.print <- "mean (0.05) - compatible with coral-watch"
                                }
                                if (reso == "high" | reso == "marspec"){
                                        remap <- "43200x21600"
                                        reso.print <- "high (0.0083) - compatible with marspec"
                                }
                        }
                }else{
                        reso.print <- "standard"
                        reso <- "std"
                }
                
                cat("Resolution:", reso.print, "| Remap size:", remap, "\n")
                
                upf <- getwd()
                setwd(folder)
                
                layer <- list.files(pattern = toupper(model))
                layer <- layer[grep("historical", layer)]
                
                if (length(layer) > 1){
                        nl <- length(layer)
                        system(paste("cdo mergetime", paste(layer, collapse = " "), paste0("temp_", "hist", "_", mod, ".nc")))
                        layer <- paste0("temp_", "hist", "_", mod, ".nc")
                        cat(nl, "files merged. \n")
                }
                
                system(paste0("cdo -sellonlatbox,", lonlat, " -remapbil,r", remap,
                              " -selyear,", years, " -selname,tos ", layer, " tos_hist_", reso, "_", mod,".nc"))
                
                file_move(paste0("tos_hist_", reso, "_", mod,".nc"),
                          paste0(upf, "/", outf))
                
                if (grepl("temp", layer)) {
                        unlink(paste0("temp_", "hist", "_", mod, ".nc"))
                }
                
                cat("Historical file for model", mod, "is ready. \n")
                
                setwd(upf)
        }
}

# And also for the future
prepare.fut <- function(model,
                        folder = NULL,
                        outf = NULL,
                        lonlat = "-180,180,-90,90",
                        remap = NULL,
                        reso = "low",
                        years = c("2036/2050", "2086/2100")) {
        
        if (is.null(remap)){
                if (is.null(reso)){
                        stop("One of resolution or remap should be given.")
                } else {
                        if (reso == "low" | reso == "bio-oracle"){
                                remap <- "4320x2160"
                                reso.print <- "low (0.083) - compatible with bio-oracle"
                        }
                        if (reso == "mean" | reso == "coral-watch"){
                                remap <- "7200x3600"
                                reso.print <- "mean (0.05) - compatible with coral-watch"
                        }
                        if (reso == "high" | reso == "marspec"){
                                remap <- "43200x21600"
                                reso.print <- "high (0.0083) - compatible with marspec"
                        }
                }
        }else{
                reso.print <- "standard"
                reso <- "std"
        }
        
        cat("Resolution:", reso.print, "| Remap size:", remap, "\n")
        
        mod <- tolower(model)
        
        if (is.null(folder)){
                folder <- paste0("raw/", mod)
        }
        
        if (is.null(outf)) {
                outf <- mod
                dir_create(outf)
        }
        
        upfiles <- list.files(outf)
        
        upf <- getwd()
        setwd(folder)
        
        layer <- list.files(pattern = toupper(model))
        layer <- layer[-grep("historical", layer)]
        
        for (i in 1:4){
                
                ssp <- paste0("ssp", c(126, 245, 370, 585))[i]
                
                fnam <- c(paste0("tos_", ssp, "_dec50_", reso ,"_", mod, ".nc"),
                          paste0("tos_", ssp, "_dec100_", reso ,"_", mod, ".nc"))
                
                if (any(!fnam %in% upfiles)){
                        
                        sel.layers <- layer[grep(ssp, layer)]
                        
                        if (length(sel.layers) > 1){
                                nl <- length(sel.layers)
                                system(paste("cdo mergetime", paste(sel.layers, collapse = " "), paste0("temp_", ssp, "_", mod, ".nc")))
                                sel.layers <- paste0("temp_", ssp, "_", mod, ".nc")
                                cat(nl, "files merged. \n")
                        }
                        
                        system(paste0(
                                "cdo",
                                " -sellonlatbox,", lonlat, " -remapbil,r", remap, " -selyear,", years[1], 
                                " -selname,tos ",
                                sel.layers, " ", 
                                paste0(
                                        "tos_",
                                        ssp,
                                        "_dec50_", reso ,"_", mod, ".nc"
                                )
                        ))
                        
                        file_move(paste0("tos_",
                                         ssp,
                                         "_dec50_", reso ,"_", mod, ".nc"),
                                  paste0(upf, "/", outf))
                        
                        system(paste0(
                                "cdo",
                                " -sellonlatbox,", lonlat, " -remapbil,r", remap, " -selyear,", years[2], 
                                " -selname,tos ",
                                sel.layers, " ", 
                                paste0(
                                        "tos_",
                                        ssp,
                                        "_dec100_", reso ,"_", mod, ".nc"
                                )
                        ))
                        
                        file_move(paste0("tos_",
                                         ssp,
                                         "_dec100_", reso ,"_", mod, ".nc"),
                                  paste0(upf, "/", outf))
                        
                        if (grepl("temp", sel.layers)) {
                                unlink(sel.layers)
                        }
                        
                        cat(ssp, "done. \n")
                }
                
        }
        cat("Future files for model", mod, "are ready. \n")
        setwd(upf)
}