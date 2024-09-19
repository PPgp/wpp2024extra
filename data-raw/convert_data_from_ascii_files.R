library(data.table)
library(usethis)

# Run this from the data-raw directory

source("functions.R")

combine.indicators.with.age <- function(file.prefix, ind.prefix = file.prefix){
    ind.all <- NULL
    for(sex in c("M", "F", "B")) {
        for(variant in c("Med", "80l", "80u", "95l", "95u")) {
            indw <- fread(paste0(file.prefix, sex, 'proj', variant, '.txt'), sep = "\t")[, country := NULL]
            ids <- c("country_code", "age")
            if(is.null(ind.all)) {
                indw <- merge.with.countries(indw)
                ids <- c("country_order", ids)
            }
            colname <- paste0(ind.prefix, if(sex == "B") "" else sex, if(variant == "Med") "" else paste0("_", variant))
            ind.all <- melt.and.merge(ind.all, indw, colname, ids = ids, by = c("country_code", "year", "age"))
        }
    }
    ind.all[, year := as.integer(year)]
    return(ind.all[order(country_order, year, age)][, country_order := NULL])
}

# Population by broader age groups
##################################

popprojAgeGrp1dt <- combine.indicators.with.age('popagegrp', 'pop')
use_data(popprojAgeGrp1dt, overwrite = TRUE)

# Dependency ratios
##################################
# YADR
yadrproj1dt <- combine.indicators.with.age('childdr', 'yadr')
use_data(yadrproj1dt, overwrite = TRUE)

# OADR
oadrproj1dt <- combine.indicators.with.age('oadr')
use_data(oadrproj1dt, overwrite = TRUE)

tools::add_datalist("..", force = TRUE)

