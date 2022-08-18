
#' Install the packages belonging to the `snaverse`
#'
#' Install the packages belonging to the `snaverse`
#'
#' The `snaverse` is a suite of packages to learn and perform social network analysis.
#' The function `snaversify` installs the packages in the suite.
#' There are four installation options
#' @param install if "snaverse" is selected, three packages will be installed.
#' If "sna4tutti" is selected, only the package containing tutorials to learn sna
#' will be installed. If "snafun" is selected, only the package that provides functions
#' to perform sna will be installed. If "SNA4DSData" is selected, only the package
#' hosting network data set to perform sna will be installed.
#'
#' @return message for successful/unsuccessful installation.
#' @export snaversify
#'
#' @examples
#' \dontrun{
#' snaversify(install = "snaverse")
#' }
snaversify <- function(install = "snaverse") {

  if (install == "snaverse") {

    remotes::install_github("SNAnalyst/sna4tutti",
                            dependencies = TRUE,
                            force = TRUE)

    remotes::install_github("SNAnalyst/snafun",
                            dependencies = TRUE,
                            force = TRUE)

    remotes::install_github("SNAnalyst/SNA4DSData",
                            dependencies = TRUE,
                            force = TRUE)

    list <- c("sna4tutti", "snafun", "SNA4DSData")

    for (i in 1:length(list)) {

      check <- find.package(list[i])

      if (grepl(list[i], check) == TRUE) {

        cat(paste0("Package ", list[i], " succesfully installed!\n"))

      } else {
        stop(paste("The installation was not successful. Please proceed with manual installation\n"))
      }

    }


  } else if (install == "sna4tutti") {

    remotes::install_github("SNAnalyst/sna4tutti",
                            dependencies = TRUE,
                            force = TRUE)


    list <- c("sna4tutti")

    for (i in 1:length(list)) {

      check <- find.package(list[i])

      if (grepl(list[i], check) == TRUE) {

        cat(paste0("Package ", list[i], " succesfully installed!\n"))

      } else {
        stop(paste("The installation was not successful. Please proceed with manual installation\n"))
      }

    }



  } else if (install == "snafun") {
    remotes::install_github("SNAnalyst/snafun",
                            dependencies = TRUE,
                            force = TRUE)

    list <- c("snafun")

    for (i in 1:length(list)) {

      check <- find.package(list[i])

      if (grepl(list[i], check) == TRUE) {

        cat(paste0("Package ", list[i], " succesfully installed!\n"))

      } else {
        stop(paste("The installation was not successful. Please proceed with manual installation\n"))
      }

    }

  } else if (install == "SNA4DSData") {

    remotes::install_github("SNAnalyst/SNA4DSData",
                            dependencies = TRUE,
                            force = TRUE)

    list <- c("SNA4DSData")

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
