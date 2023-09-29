#' @export

run_app <- function() {
  app_dir <- system.file("shinyapp", package = "dvwaste")
  if (app_dir == "") {
    stop("Could not find example directory. Try re-installing `mypackage`.", call. = FALSE)
  }

  shiny::runApp(app_dir, display.mode = "normal")
}


