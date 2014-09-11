corr <- function(directory, threshold = 0) {
        df <- complete(directory, id=1:332)
        correlations <- numeric(0)

        for (i in 1:nrow(df)) {
                if (df[i, 2] > threshold) {
                        data <- read.csv(constructPaths(directory, id=df[i, 1]))
                        data <- data[complete.cases(data), ]
                        correlations <- c(correlations, 
                                          cor(data[, "sulfate",], data[, "nitrate"]))
                }
        }
        correlations
}