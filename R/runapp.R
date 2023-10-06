#' @export

run_app <- function() {
  app_dir <- system.file("shinyapp", package = "dvwaste")
  if (app_dir == "") {
    stop("Could not find directory. Try re-installing `dvwaste`.", call. = FALSE)
  }

  shiny::runApp(app_dir, display.mode = "normal")
}


