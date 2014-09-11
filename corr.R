corr <- function(directory, threshold = 0) {
        ## CORR calculates the correlation between the "sulfate" and "nitrate"
        ## Takes in a directory name (where data is stored) and threshold of the
        # number in complete observations in each data file.
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