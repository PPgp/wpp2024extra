# annual projections of Crude Death Rate (median,80 & 95% PIs) 
# in long format (as data.table)
cdrproj1dt <- local({
    e <- new.env()
    load("cdrproj1dt.rda", envir= e)
    load("countries.rda", envir= e)
    merge(data.table::as.data.table(e$countries[, .(country_code, name)]), 
          data.table::as.data.table(e$cdrproj1dt), by = "country_code", 
          sort = FALSE)
})    
