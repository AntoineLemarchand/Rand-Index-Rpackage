pkgname <- "Rindex"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('Rindex')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("clustering")
### * clustering

flush(stderr()); flush(stdout())

### Name: clustering
### Title: clustering
### Aliases: clustering
### Keywords: cluster

### ** Examples

clustering(dataframe = force(Aids2)[,3:4])



cleanEx()
nameEx("hello")
### * hello

flush(stderr()); flush(stdout())

### Name: hello
### Title: Hello, World!
### Aliases: hello

### ** Examples

hello()



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
