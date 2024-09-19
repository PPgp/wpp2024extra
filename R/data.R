#' Annual Birth Counts in Thousands
#'
#' Datasets containing the United Nations' annual time series of the birth counts 
#' for all countries as available in 2024.
#' 
#' @details \code{births1dt} contains estimated births while \code{birthsproj1dt}
#'     contains projected births for future years and include 80\% and 95\% 
#'     probability intervals.
#' 
#' @format Data table in long format with variables:
#' \describe{
#'   \item{country_code}{int Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard)} 
#'   \item{name}{chr Name of country or region}
#'   \item{year}{int Year when births occured}
#'   \item{births}{dbl Birth counts in thousands}
#'   \item{births_80l, births_95l}{dbl Lower bounds of the 80 and 95 percent probability intervals}
#'   \item{births_80u, births_95u}{dbl Upper bounds of the 80 and 95 percent probability intervals}
#'   
#' }
#' @source These datasets are based on estimates and projections of United Nations, 
#'     Department of Economic and Social Affairs, Population Division (2024).
#' @references World Population Prospects: The 2024 Revision. \url{http://population.un.org/wpp}.
#' @rdname births
"births1dt"

#' @rdname births
"birthsproj1dt"

#' Annual Crude Birth Rate
#'
#' Datasets containing the United Nations' annual time series of the crude birth rate (CBR)
#' for all countries as available in 2024.
#' 
#' @details \code{cbr1dt} contains estimated CBR while \code{cbrproj1dt}
#'     contains projected CBR for future years and include 80\% and 95\% 
#'     probability intervals.
#' 
#' @format Data table in long format with variables:
#' \describe{
#'   \item{country_code}{int Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard)} 
#'   \item{name}{chr Name of country or region}
#'   \item{year}{int Year when CBR occured}
#'   \item{cbr}{dbl CBR counts in thousands}
#'   \item{cbr_80l, cbr_95l}{dbl Lower bounds of the 80 and 95 percent probability intervals}
#'   \item{cbr_80u, cbr_95u}{dbl Upper bounds of the 80 and 95 percent probability intervals}
#'   
#' }
#' @source These datasets are based on estimates and projections of United Nations, 
#'     Department of Economic and Social Affairs, Population Division (2024).
#' @references World Population Prospects: The 2024 Revision. \url{http://population.un.org/wpp}.
#' @rdname cbr
"cbr1dt"

#' @rdname cbr
"cbrproj1dt"



#' Annual Death Counts in Thousands
#'
#' Datasets containing the United Nations' annual time series of the death counts 
#' for all countries as available in 2024.
#' 
#' @details \code{deaths1dt} contains estimated deaths while \code{deathsproj1dt}
#'     contains projected deaths for future years and include 80\% and 95\% 
#'     probability intervals.
#' 
#' @format Data table in long format with variables:
#' \describe{
#'   \item{country_code}{int Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard)} 
#'   \item{name}{chr Name of country or region}
#'   \item{year}{int Year when deaths occured}
#'   \item{deaths}{dbl Death counts in thousands}
#'   \item{deaths_80l, deaths_95l}{dbl Lower bounds of the 80 and 95 percent probability intervals}
#'   \item{deaths_80u, deaths_95u}{dbl Upper bounds of the 80 and 95 percent probability intervals}
#'   
#' }
#' @source These datasets are based on estimates and projections of United Nations, 
#'     Department of Economic and Social Affairs, Population Division (2024).
#' @references World Population Prospects: The 2024 Revision. \url{http://population.un.org/wpp}.
#' @rdname deaths
"deaths1dt"

#' @rdname deaths
"deathsproj1dt"

#' Annual Crude Death Rate
#'
#' Datasets containing the United Nations' annual time series of the crude death rate (CDR)
#' for all countries as available in 2024.
#' 
#' @details \code{cdr1dt} contains estimated CDR while \code{cdrproj1dt}
#'     contains projected CDR for future years and include 80\% and 95\% 
#'     probability intervals.
#' 
#' @format Data table in long format with variables:
#' \describe{
#'   \item{country_code}{int Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard)} 
#'   \item{name}{chr Name of country or region}
#'   \item{year}{int Year when CDR occured}
#'   \item{cdr}{dbl CDR counts in thousands}
#'   \item{cdr_80l, cdr_95l}{dbl Lower bounds of the 80 and 95 percent probability intervals}
#'   \item{cdr_80u, cdr_95u}{dbl Upper bounds of the 80 and 95 percent probability intervals}
#' }
#' @source These datasets are based on estimates and projections of United Nations, 
#'     Department of Economic and Social Affairs, Population Division (2024).
#' @references World Population Prospects: The 2024 Revision. \url{http://population.un.org/wpp}.
#' @rdname cdr
"cdr1dt"

#' @rdname cdr
"cdrproj1dt"

#' Projection of Population Counts by Broader Age Groups 
#'
#' Annual time series of projected population counts by broader age groups
#' for all countries, including probability intervals, as available in 2024. These are considered as mid-year counts.
#' 
#' @format Data table in long format with variables:
#' \describe{
#'   \item{country_code}{int Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard)} 
#'   \item{name}{chr Name of country or region}
#'   \item{year}{int Year}
#'   \item{age}{chr Age interval}
#'   \item{pop, popM, popF}{dbl Median population count in thousand for the total, male and female, respectively.}
#'   \item{pop_80l, pop_95l, popM_80l, popM_95l, popF_80l, popF_95l}{dbl Lower bounds of the 80 and 95 percent probability intervals
#'          for the total, male and female, respectively.}
#'   \item{pop_80u, pop_95u, popM_80u, popM_95u, popF_80u, popF_95u}{dbl Upper bounds of the 80 and 95 percent probability intervals
#'          for the total, male and female, respectively.}
#' }
#' @source These datasets are based on estimates and projections of United Nations, 
#'     Department of Economic and Social Affairs, Population Division (2024).
#' @references World Population Prospects: The 2024 Revision. \url{http://population.un.org/wpp}.
#' @rdname popprojAgeGrp
"popprojAgeGrp1dt"

#' Annual Young Age Dependency Ratio 
#'
#' Dataset containing the United Nations' projected annual time series of the young age dependency ratios (YADR)
#' for all countries as available in 2024, using multiple definitions.
#' 
#' @format Data table in long format with variables:
#' \describe{
#'   \item{country_code}{int Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard)} 
#'   \item{name}{chr Name of country or region}
#'   \item{year}{int Year when YADR occured}
#'   \item{age}{chr Gives the definition of YADR. There are six definitions: 0-14/15-59,  0-14/15-64,
#'       0-19/20-64, 0-19/20-69, 0-24/25-64, 0-24/25-69.}
#'   \item{yadr, yadrM, yadrF}{dbl Median YADR computed over the total, male and female, respectively.}
#'   \item{yadr_80l, yadr_95l, yadrM_80l, yadrM_95l, yadrF_80l, yadrF_95l}{dbl Lower bounds
#'          of the 80 and 95 percent probability intervals for the total, male and female, respectively.}
#'  \item{yadr_80u, yadr_95u, yadrM_80u, yadrM_95u, yadrF_80u, yadrF_95u}{dbl Upper bounds
#'          of the 80 and 95 percent probability intervals for the total, male and female, respectively.}
#' }
#' @source These datasets are based on estimates and projections of United Nations, 
#'     Department of Economic and Social Affairs, Population Division (2024).
#' @references World Population Prospects: The 2024 Revision. \url{http://population.un.org/wpp}.
#' @rdname yadr
"yadrproj1dt"

#' Annual Old Age Dependency Ratio 
#'
#' Dataset containing the United Nations' projected annual time series of the old age dependency ratios (OADR)
#' for all countries as available in 2024, using multiple definitions.
#' 
#' @format Data table in long format with variables:
#' \describe{
#'   \item{country_code}{int Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard)} 
#'   \item{name}{chr Name of country or region}
#'   \item{year}{int Year when OADR occured}
#'   \item{age}{chr Gives the definition of OADR. There are six definitions: 60+/15-59, 65+/15-64, 65+/20-64,
#'           65+/25-64, 70+/20-69, 70+/25-69.}
#'   \item{oadr, oadrM, oadrF}{dbl Median OADR computed over the total, male and female, respectively.}
#'   \item{oadr_80l, oadr_95l, oadrM_80l, oadrM_95l, oadrF_80l, oadrF_95l}{dbl Lower bounds
#'          of the 80 and 95 percent probability intervals for the total, male and female, respectively.}
#'  \item{oadr_80u, oadr_95u, oadrM_80u, oadrM_95u, oadrF_80u, oadrF_95u}{dbl Upper bounds
#'          of the 80 and 95 percent probability intervals for the total, male and female, respectively.}
#' }
#' @source These datasets are based on estimates and projections of United Nations, 
#'     Department of Economic and Social Affairs, Population Division (2024).
#' @references World Population Prospects: The 2024 Revision. \url{http://population.un.org/wpp}.
#' @rdname oadr
"oadrproj1dt"

#' United Nations Table of Locations
#' 
#' United Nations table of locations (countries, regions) as available in 2024, 
#' including the UN code, name and the order in which they usually 
#' appear in UN datasets.
#' 
#' @format Data table with variables:
#' \describe{
#'      \item{country_code}{int Numerical Location Code (3-digit codes following ISO 3166-1 numeric standard)} 
#'      \item{name}{chr Name of country or region}
#'      \item{country_order}{int Order of the location in which it usually appears in UN datasets}
#' }
#' @source Data provided by the United Nations Population Division.
#' @rdname countries
"countries"
