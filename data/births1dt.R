# annual Births in long format (as data.table)
births1dt <- local({
    e <- new.env()
    load("births1dt.rda", envir= e)
    load("countries.rda", envir= e)
    merge(e$countries[, c("country_code", "name")], 
          data.table::as.data.table(e$births1dt), by = "country_code", 
          sort = FALSE)
})
