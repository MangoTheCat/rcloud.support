# Greatly reduced, and changed, startup

#' @export

configure.rcloud <- function (rc.cf) {

  ## load configuration --- I'm not sure if DCF is a good idea - we may change this ...
  ## ideally, all of the above should be superceded by the configuration file

  setConf("root", "/data/rcloud")

  rc.gsrc <- list()
  if (isTRUE(file.exists(rc.cf))) {
    .dcf.sections.with <- function(d, sec) {
      if (!sec %in% colnames(d)) return(list())
      w <- which(!is.na(d[,sec]))
      l <- lapply(w, function(o) { e <- d[o,]; e <- e[!is.na(e)]; names(e) <- gsub("[ \t]", ".", tolower(names(e))); e })
      names(l) <- d[w,sec]
      l
    }
    cat("Loading RCloud configuration file...\n")
    rc.all <- read.dcf(rc.cf)
    rc.c <- rc.all[1,]
    rc.c <- rc.c[!is.na(rc.c)]
    rc.gsrc <- .dcf.sections.with(rc.all, "gist.source")
    for (n in names(rc.c)) setConf(gsub("[ \t]", ".", tolower(n)), gsub("${ROOT}", getConf("root"), as.vector(rc.c[n]), fixed=TRUE))
  }

  .session$gist.sources.conf <- rc.gsrc
}
