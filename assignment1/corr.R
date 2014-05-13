corr <- function(directory, threshold = 0) {
	f <- list.files( path=directory )
	cordat <- c()
	for (i in 1:length(f)){
		path <- paste(directory, f[i], sep=.Platform$file.sep)
		dat <- read.csv(path, header=TRUE)
		cdat <- dat[complete.cases(dat),]
		if ( nrow(cdat) > threshold ) {
			cordat <- c(cordat, cor(cdat$sulfate, cdat$nitrate))
		}
	}
	return (cordat)
}

