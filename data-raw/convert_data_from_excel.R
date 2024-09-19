library(readxl)
library(reshape2)
library(usethis)
library(data.table)


# Run this from the data-raw directory


first.clean <- function(x, col.to.start = 11) {
    df <- x[, c(5, 3, col.to.start:ncol(x))]
    colnames(df)[c(1,2)] <- c("country_code", "name")
    df
} 

melt.df <- function(x) {
    dt <- data.table(x)[`2024` != "..."]
    dtl <- data.table::melt(dt, id.vars=c("name", "country_code"), variable.name = "year",
                variable.factor = FALSE)
    dtl[, `:=`(value = as.numeric(value), year = as.integer(year))]
    return(dtl)
}

process.proj.indicator <- function(file.name, sheets.to.files){
    proj <- NULL
    # merge quantiles together
    for (f in names(sheets.to.files)) {
        df <- read_excel(file.name, sheet = sheets.to.files[[f]], skip=16)
        df <- first.clean(df)
        dtl <- melt.df(df)[, name := NULL]
        setnames(dtl, "value", f)
        proj <- if(is.null(proj)) dtl else merge(proj, dtl, 
                                by = c("country_code", "year"), all = TRUE)
    }
    return(proj)
}

# read all indicators (medians)
allind <- read_excel("WPP2024_GEN_F01_DEMOGRAPHIC_INDICATORS_COMPACT.xlsx", skip = 16)
allind <- first.clean((allind))

# CBR
# estimates
cbr <- data.table(allind[, startsWith(colnames(allind), "Crude Birth Rate") | 
                             colnames(allind) %in% c("country_code", "name", "Year")])
setnames(cbr, "Year", "year")
setnames(cbr, ncol(cbr), "cbr")
cbr[, cbr := as.numeric(cbr)][is.na(cbr), cbr := 0] # applies to Holy See  
# CBR projections
cbrproj <- process.proj.indicator("UN_PPP2024_Output_CBR.xlsx", 
                                  list(cbr = "Median", cbr_80l="Lower 80", cbr_80u="Upper 80", 
                                        cbr_95l="Lower 95", cbr_95u="Upper 95"))

cntries <- unique(cbr[country_code %in% cbrproj[, country_code], country_code])

# save
cbr1dt <- cbr[country_code %in% cntries][, `:=`(name = NULL)]
cbrproj1dt <- cbrproj
use_data(cbr1dt, overwrite = TRUE)
use_data(cbrproj1dt, overwrite = TRUE)

# CDR
cdrest <- data.table(allind[, startsWith(colnames(allind), "Crude Death Rate") | 
                             colnames(allind) %in% c("country_code", "name", "Year")])
setnames(cdrest, "Year", "year")
setnames(cdrest, ncol(cdrest), "cdr")
cdrest[, cdr := as.numeric(cdr)][is.na(cdr), cdr := 0] # applies to Holy See 
# CDR projections
cdrproj <-  process.proj.indicator("UN_PPP2024_Output_CDR.xlsx",
                                   list(cdr = "Median", cdr_80l="Lower 80", cdr_80u="Upper 80", 
                                        cdr_95l="Lower 95", cdr_95u="Upper 95"))

cntries <- unique(cdrest[country_code %in% cdrproj[, country_code], country_code])
# save
cdr1dt <- cdrest[country_code %in% cntries][, `:=`(name = NULL)]
cdrproj1dt <- cdrproj
use_data(cdr1dt, overwrite = TRUE)
use_data(cdrproj1dt, overwrite = TRUE)

# births projections
est <- data.table(allind[, startsWith(colnames(allind), "Births (thousands)") | 
                                colnames(allind) %in% c("country_code", "name", "Year")])
setnames(est, "Year", "year")
setnames(est, ncol(est), "births")
est[, births := as.numeric(births)][is.na(births), births := 0] # applies to Holy See  
proj <-  process.proj.indicator("UN_PPP2024_Output_Births.xlsx", 
                                list(births = "Median", births_80l="Lower 80", births_80u="Upper 80", 
                                    births_95l="Lower 95", births_95u="Upper 95"))

cntries <- unique(est[country_code %in% proj[, country_code], country_code])
# save
births1dt <- est[country_code %in% cntries][, `:=`(name = NULL)]
birthsproj1dt <- proj
use_data(births1dt, overwrite = TRUE)
use_data(birthsproj1dt, overwrite = TRUE)

# deaths projections
est <- data.table(allind[, startsWith(colnames(allind), "Total Deaths") | 
                             colnames(allind) %in% c("country_code", "name", "Year")])
setnames(est, "Year", "year")
setnames(est, ncol(est), "deaths")
est[, deaths := as.numeric(deaths)][is.na(deaths), deaths := 0] # applies to Holy See  
proj <-  process.proj.indicator("UN_PPP2024_Output_Deaths.xlsx", 
                                list(deaths = "Median", deaths_80l="Lower 80", deaths_80u="Upper 80", 
                                     deaths_95l="Lower 95", deaths_95u="Upper 95"))

cntries <- unique(est[country_code %in% proj[, country_code], country_code])
# save
deaths1dt <- est[country_code %in% cntries][, `:=`(name = NULL)]
deathsproj1dt <- proj
use_data(deaths1dt, overwrite = TRUE)
use_data(deathsproj1dt, overwrite = TRUE)
