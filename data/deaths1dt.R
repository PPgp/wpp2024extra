# annual Deaths in long format (as data.table)
deaths1dt <- local({
    e <- new.env()
    load("deaths1dt.rda", envir= e)
    load("countries.rda", envir= e)
    merge(e$countries[, c("country_code", "name")], 
          data.table::as.data.table(e$deaths1dt), by = "country_code", 
          sort = FALSE)
})
