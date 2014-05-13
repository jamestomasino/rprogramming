pollutantmean <- function(directory, pollutant, id=1:332) {
	# ideas that didn't work
	# ------------
	# dir <- paste(directory, pollutant, sep=.Platform$file.sep)
	# path <- paste(dir, '.csv', sep="")
	# dat <- read.csv(path, header=TRUE)
	# ------------
	# filenames <- list.files(path=directory)
	# do.call("rbind", lapply(paste(directory,filenames,sep=.Platform$file.sep), read.csv, header = TRUE))

	mergedata <- data.frame()
	for (i in id) {
		dir <- paste(directory, formatC(i, width=3, flag='0'), sep=.Platform$file.sep)
		path <- paste(dir, '.csv', sep="")
		dat <- read.csv(path, header=TRUE)
		mergedata <- rbind(mergedata, dat)
	}
	mean( mergedata[,pollutant], na.rm=T)
}
