
## configuration environment -- loaded from the config file in configure.rcloud()
.rc.conf <- new.env(parent=emptyenv())

.rc.conf$solr.url <- "http://localhost:8983/solr/rcloudnotebooks"
.rc.conf$solr.auth.user <- NULL
.rc.conf$solr.auth.pwd <- NULL

getConf <- function(name) .rc.conf[[name]]
