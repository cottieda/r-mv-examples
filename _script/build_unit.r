#Get the command line arguments 
args = commandArgs(trailingOnly = TRUE)

#Batch file should have set the first argument to be the target directory
#Set the working directory to be the target directory
setwd(args[1])

#Get all the source files in ./source relative to the target directory
filenames = list.files("./source", pattern="*.rmd", full.names = TRUE, ignore.case = TRUE)
cat("\n\n\nfilenames:\n")
cat(filenames)
cat(length(filenames))
cat("\n\n\n")

#Knit all the files in ./source
clean_render = function(...){
	knitr::knit_meta(class=NULL, clean = TRUE)
	rmarkdown::render(...)
}
lapply(filenames, clean_render, output_dir = "./out", clean = TRUE, quiet = FALSE)