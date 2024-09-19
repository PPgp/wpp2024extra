# wpp2024extra

The wpp2024extra R package provides additional datasets from the United Nations World Population Prospects, the [WPP 2024](https://population.un.org/wpp) that are not included in the [**wpp2024**](https://github.com/PPgp/wpp2024) R package.

#### Data copyright

2024 United Nations, DESA, Population Division. Licensed under [Creative Commons license CC BY 3.0 IGO](http://creativecommons.org/licenses/by/3.0/igo).
Source: United Nations, DESA, Population Division. [World Population Prospects 2024](http://population.un.org/wpp/).

## Dataset format

All datasets are  in a long format (countries, ages and time correspond to rows and indicators correspond to columns) returned as **data.table** objects. They contain annual (1x1) data. 

## Birth datasets

### Birth counts

* `births1dt`: historical estimates of birth counts in thousands.
* `birthsproj1dt`: projections of birth counts in thousands; includes median, lower and upper bounds of the 80 and 90% probability intervals.

### Annual crude birth rate

* `cbr1dt`: historical estimates of annual crude birth rate.
* `cbrproj1dt`: projections of annual crude birth rate; includes median, lower and upper bounds of the 80 and 90% probability intervals.

## Death datasets

### Death counts

* `deaths1dt`: historical estimates of death counts in thousands.
* `deathsproj1dt`: projections of death counts in thousands; includes median, lower and upper bounds of the 80 and 90% probability intervals.

### Annual crude death rate

* `cdr1dt`: historical estimates of annual crude death rate.
* `cdrproj1dt`: projections of annual crude death rate; includes median, lower and upper bounds of the 80 and 90% probability intervals.

## Dependency ratio datasets

* `yadrproj1dt`: projections of young age dependency ratio
* `oadrproj1dt`: projections of old age dependency ratio

## Population datasets

* `popprojAgeGrp1dt`: projections of population by broader age groups
