
## configuration environment -- loaded from the config file in configure.rcloud()
.rc.conf <- new.env(parent=emptyenv())

.rc.conf$solr.url <- "http://localhost:8983/solr/rcloudnotebooks"
.rc.conf$solr.auth.user <- NULL
.rc.conf$solr.auth.pwd <- NULL

#' Get values fro mconfig file
#'
#' @param name Name of config element
#' @return config element
#'
#' @export
getConf <- function(name) {
  .rc.conf[[name]]
}
