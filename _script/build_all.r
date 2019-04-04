#get the command line args
args = commandArgs(trailingOnly = TRUE)
#set the working directory to the parent directory (should be root of the project)
setwd(paste0("../",args[0]))

#find and delete all files in the /_web directory
unlink("./_web", recursive = TRUE)
#re-create the /_web directory
dir.create("./_web")

#find and delete all files in the /data directory
unlink("./data", recursive = TRUE)

#get all data subdirectories 
#-- doesn't start with '_'
#-- no '.' which would indicate a file and not a dir
paths = dir(path = ".", pattern = "^[^_][^.]+$", recursive = FALSE)
paths = paste0(paths, "/data")

#get all the files (datasets) in subdirectories
datapaths = list.files(paths, full.names = TRUE)
datanames = basename(datapaths)
datatargets = paste0("./data/", datanames)

#re-create the /data directory
dir.create("./data")

#copy the datasets into the directory
file.copy(datapaths, datatargets)

#move all the .rmd files into the /web directory
filepaths = list.files(".", pattern="*.rmd",
	full.names = TRUE, ignore.case = TRUE, recursive = TRUE)
filenames = basename(filepaths)
filetargets = paste0("./_web/", filenames)
file.copy(filepaths, filetargets)

# rename index.rmd to index.Rmd
file.rename("index.rmd","index.Rmd")

#move the _yml into the /web directory
file.copy("_site.yml", "./_web/_site.yml")

#move into the web subdirectory (should be root of the website)
setwd("./_web/")

#clean and render the site
rmarkdown::clean_site()
rmarkdown::render_site()

#find and delete all files in the /data directory
unlink("./data", recursive = TRUE)
