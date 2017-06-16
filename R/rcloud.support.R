rcloud.notebook.star.count <- function(notebook)
{
  0
}


.nb_db <- list2env(nbs_db)

rcloud.get.notebook <- function(id, version = NULL, source = NULL, raw=FALSE) {

  .nb_db[[id]]

}
