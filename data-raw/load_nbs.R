
read_one_nb <- function(path) {
  nb <- jsonlite::fromJSON(path, simplifyDataFrame = FALSE)
  nb
}

extract_nb_id <- function(nb) {
  nb$content$id
}

files <- Sys.glob("data-raw/*.json")

nbs_db <- lapply(files, read_one_nb)

names(nbs_db) <- vapply(nbs, extract_nb_id, "a")

.nb_db <- list2env(rcloud.support:::nbs_db)

use_data(.nb_db, internal = TRUE)
