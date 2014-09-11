constructPaths <- function(directory, id) {
        paths <- character(length(id))
        id <- as.character(id)
        for (i in 1:length(id)) {
                if (as.numeric(id[i]) < 10) {
                        id[i] <- paste("00", id[i], sep="")
                }
                else if (as.numeric(id[i]) >= 10 & as.numeric(id[i]) < 100) {
                        id[i] <- paste("0", id[i], sep="")
                }
                paths[i] <- paste(directory, "/", id[i], ".csv", sep="")
        }
        paths
}