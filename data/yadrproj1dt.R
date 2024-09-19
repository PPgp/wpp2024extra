# annual projections of young age dependency ratio (median,80 & 95% PIs) 
# in long format (as data.table)
yadrproj1dt <- local({
    e <- new.env()
    load("yadrproj1dt.rda", envir= e)
    load("countries.rda", envir= e)
    merge(data.table::as.data.table(e$countries[, .(country_code, name)]), 
          data.table::as.data.table(e$yadrproj1dt), by = "country_code", 
          sort = FALSE)
})    
