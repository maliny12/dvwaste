#' Launches a Shiny App from the 'dvwaste' package
#'
#' This function allows you to launch a Shiny web application that is bundled
#' with the 'dvwaste' package. It retrieves the application directory within
#' the package and runs it using Shiny's 'runApp' function.
#'
#'
#' @usage
#' run_app()
#'
#' @details
#' The 'run_app' function is a convenient way to start the Shiny app provided
#' by the 'dvwaste' package. If the package is not installed or if the
#' application directory is not found, it will display an error message
#' suggesting a re-installation of the package.
#'
#' @seealso
#' \code{\link[shiny]{runApp}}
#'
#' @examples
#' \dontrun{
#' # Run the Shiny app from 'dvwaste' package
#' run_app()
#' }
#'
#' @return None (launches a Shiny App)
#'
#' @export


run_app <- function() {
  app_dir <- system.file("shinyapp", package = "dvwaste")
  if (app_dir == "") {
    stop("Could not find directory. Try re-installing `dvwaste`.", call. = FALSE)
  }

  shiny::runApp(app_dir, display.mode = "normal")
}


