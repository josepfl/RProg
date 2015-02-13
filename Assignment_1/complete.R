complete <- function(directory, id = 1:332) {
        files <- list.files(directory, full.names = TRUE)
        c_cases <- data.frame()        
                
        for (i in id) {
                data <- read.csv(files[i])
                c <- complete.cases(data)
                naRm <- data[c, ]
                c_cases <- rbind(c_cases, c(i, nrow(naRm)))
                }
        
        names(c_cases) <- c("id", "nobs")
        c_cases
}
