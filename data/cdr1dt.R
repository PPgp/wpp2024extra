# annual Crude Death Rate in long format (as data.table)
cdr1dt <- local({
    e <- new.env()
    load("cdr1dt.rda", envir= e)
    load("countries.rda", envir= e)
    merge(e$countries[, c("country_code", "name")], 
          data.table::as.data.table(e$cdr1dt), by = "country_code", 
          sort = FALSE)
})
