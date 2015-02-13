corr <- function(directory, threshold = 0) {
        files <- list.files(directory, full.names = TRUE)
        c_list <- c()
        
        for (i in 1:length(files)) {
                c_cases <- complete(directory, i)
                
                if (c_cases$nobs > threshold) {
                        data <- read.csv(files[i])
                        c_list <- c(c_list, cor(data$sulfate, data$nitrate, use = "complete.obs"))
                }
        }
 
        c_list
}
