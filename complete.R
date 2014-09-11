complete <- function(directory, id=1:332) {
        df <- as.data.frame(matrix(data=NA, nrow=length(id), ncol=2))
        names(df) <- c("id", "nobs")
        
        paths <- constructPaths(directory, id)
        for (i in 1:length(paths)) {
                data <- read.csv(paths[i])
                data <- data[complete.cases(data), ]
                df[i, 1] <- as.numeric(id[i]); df[i, 2] <- nrow(data)
        }
        df
}