pollutantmean <- function(directory, pollutant, id = 1:332) {
        files <- list.files(directory, full.names = TRUE)
        data <- data.frame()        
                
        for (i in id) {
                data <- rbind(data, read.csv(files[i]))
        }
        
        p_mean <- mean(data[,pollutant], na.rm = TRUE)
        p_mean
}
