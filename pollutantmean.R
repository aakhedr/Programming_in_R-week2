pollutantmean <- function(directory, pollutant, id=1:332) {
        paths <- constructPaths(directory, id)

        total <- numeric(0)
        for (file in paths) {
                data <- read.csv(file)
                total <- c(total, data[pollutant][!is.na(data[pollutant])])
        }
        mean(total)
}