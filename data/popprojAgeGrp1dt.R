# annual population projections by broader age groups (median,80 & 95% PIs) 
# in long format (as data.table)
popprojAgeGrp1dt <- local({
    e <- new.env()
    load("popprojAgeGrp1dt.rda", envir= e)
    load("countries.rda", envir= e)
    merge(data.table::as.data.table(e$countries[, .(country_code, name)]), 
          data.table::as.data.table(e$popprojAgeGrp1dt), by = "country_code", 
          sort = FALSE)
})    
