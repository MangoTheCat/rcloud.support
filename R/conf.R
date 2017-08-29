
## configuration environment -- loaded from the config file in configure.rcloud()
.rc.conf <- new.env(parent=emptyenv())

.rc.conf$solr.url <- "http://solr:8983/solr/rcloudnotebooks"
.rc.conf$solr.auth.user <- NULL
.rc.conf$solr.auth.pwd <- NULL

#' Get values from config file
#'
#' @param name Name of config element
#' @return config element or NULL if it's not there
#'
getConf <- function(name) {
  if(exists(name, where = .rc.conf)) {
    .rc.conf[[name]]
  } else {
    NULL
  }
}
