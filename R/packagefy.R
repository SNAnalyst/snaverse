
#' Install the packages required to make the `snaverse`run
#'
#' Install the packages required to make the `snaverse`run
#'
#' The `snaverse` is a suite of packages to learn and perform social network analysis.
#' The function `packagefy` installs the packages required to make the packages
#' inside the `snaverse` work properly.
#' There are three installation options
#' @param install if "all" is selected, all the required packages will be installed.
#' If "CRAN" is selected, only the packages from the official R repository
#' will be installed. If "GitHun" is selected, only the packages hosted on GitHub
#' by developers will be installed.
#'
#' @return message for successful/unsuccessful installation.
#' @export packagefy
#'
#' @examples
#' \dontrun{
#' packagefy(install = "all")
#' }

packagefy <- function(install = "all") {

  if (install == "all") {
    utils::install.packages(c('btergm',
                              'ergm',
                              'fontawesome',
                              'glue',
                              'igraph',
                              'igraphdata',
                              'influenceR',
                              'intergraph',
                              'knitr',
                              'ndtv',
                              'network',
                              'networkDynamic',
                              'rmarkdown',
                              'rstudioapi',
                              'sna',
                              'stringr',
                              'tsna',
                              'esc',
                              'fs',
                              'rlang',
                              'rprojroot',
                              'texreg'
                              'usethis'))

    remotes::install_github("rstudio-education/gradethis",
                            dependencies = TRUE,
                            force = TRUE)

    remotes::install_github("rstudio/learnr",
                            dependencies = TRUE,
                            force = TRUE)

    remotes::install_github("matthewjdenny/GERGM",
                            dependencies = TRUE,
                            force = TRUE)

    list <- c('btergm',
              'ergm',
              'fontawesome',
              'glue',
              'igraph',
              'igraphdata',
              'influenceR',
              'intergraph',
              'knitr',
              'ndtv',
              'network',
              'networkDynamic',
              'rmarkdown',
              'rstudioapi',
              'sna',
              'stringr',
              'tsna',
              'esc',
              'fs',
              'rlang',
              'rprojroot',
              'texreg',
              'usethis',
              'gradethis',
              'learnr',
              'GERGM')

    for (i in 1:length(list)) {

      check <- find.package(list[i])

      if (grepl(list[i], check) == TRUE) {

        cat(paste0("Package ", list[i], " succesfully installed!\n"))

      } else {
        stop(paste("The installation was not successful. Please proceed with manual installation\n"))
      }

    }

  } else if (install == "CRAN") {
    utils::install.packages(c('btergm',
                              'ergm',
                              'fontawesome',
                              'glue',
                              'igraph',
                              'igraphdata',
                              'influenceR',
                              'intergraph',
                              'knitr',
                              'ndtv',
                              'network',
                              'networkDynamic',
                              'rmarkdown',
                              'rstudioapi',
                              'sna',
                              'stringr',
                              'tsna',
                              'esc',
                              'fs',
                              'rlang',
                              'rprojroot',
                              'texreg',
                              'usethis'))


    list <- c('btergm',
              'ergm',
              'fontawesome',
              'glue',
              'igraph',
              'igraphdata',
              'influenceR',
              'intergraph',
              'knitr',
              'ndtv',
              'network',
              'networkDynamic',
              'rmarkdown',
              'rstudioapi',
              'sna',
              'stringr',
              'tsna',
              'esc',
              'fs',
              'rlang',
              'rprojroot',
              'texreg',
              'usethis')

    for (i in 1:length(list)) {

      check <- find.package(list[i])

      if (grepl(list[i], check) == TRUE) {

        cat(paste0("Package ", list[i], " succesfully installed!\n"))

      } else {
        stop(paste("The installation was not successful. Please proceed with manual installation\n"))
      }

    }

  } else if (install == "GitHub") {

    remotes::install_github("rstudio-education/gradethis",
                            dependencies = TRUE,
                            force = TRUE)

    remotes::install_github("rstudio/learnr",
                            dependencies = TRUE,
                            force = TRUE)

    remotes::install_github("matthewjdenny/GERGM",
                            dependencies = TRUE,
                            force = TRUE)


    list < c('gradethis',
             'learnr',
             'GERGM')

    for (i in 1:length(list)) {

      check <- find.package(list[i])

      if (grepl(list[i], check) == TRUE) {

        cat(paste0("Package ", list[i], " succesfully installed!\n"))

      } else {
        stop(paste("The installation was not successful. Please proceed with manual installation\n"))
      }
    }
  }
}
