# annual projections of Crude Birth Rate (median,80 & 95% PIs) 
# in long format (as data.table)
cbrproj1dt <- local({
    e <- new.env()
    load("cbrproj1dt.rda", envir= e)
    load("countries.rda", envir= e)
    merge(data.table::as.data.table(e$countries[, .(country_code, name)]), 
          data.table::as.data.table(e$cbrproj1dt), by = "country_code", 
          sort = FALSE)
})    
