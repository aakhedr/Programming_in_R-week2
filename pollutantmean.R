pollutantmean <- function(directory, pollutant, id=1:332) {
        ## POLLUTANTMEAN returns the mean of data colum of name pollutant across
        # all id files
        ## Takes in directory name (where data files are stored), pollutant (data
        # column name) and file ids
        paths <- constructPaths(directory, id)

        total <- numeric(0)
        for (file in paths) {
                data <- read.csv(file)
                total <- c(total, data[pollutant][!is.na(data[pollutant])])
        }
        mean(total)
}