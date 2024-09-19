# annual projections of Births (median,80 & 95% PIs) 
# in long format (as data.table)
birthsproj1dt <- local({
    e <- new.env()
    load("birthsproj1dt.rda", envir= e)
    load("countries.rda", envir= e)
    merge(data.table::as.data.table(e$countries[, .(country_code, name)]), 
          data.table::as.data.table(e$birthsproj1dt), by = "country_code", 
          sort = FALSE)
})    
