# annual projections of Deaths (median,80 & 95% PIs) 
# in long format (as data.table)
deathsproj1dt <- local({
    e <- new.env()
    load("deathsproj1dt.rda", envir= e)
    load("countries.rda", envir= e)
    merge(data.table::as.data.table(e$countries[, .(country_code, name)]), 
          data.table::as.data.table(e$deathsproj1dt), by = "country_code", 
          sort = FALSE)
})    
