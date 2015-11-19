exit
quit
q()
local({pkg <- select.list(sort(.packages(all.available = TRUE)),graphics=TRUE)
if(nchar(pkg)) library(pkg, character.only=TRUE)})
utils:::menuInstallPkgs()
getwd()
install.packages("knitr")
getwd()
setwd("now/coursera/")
ls
dir
dir()
ls()
ls
ls
ls
dir
"dir"
dir
ls
ls()
dir()
setwd("machine/")
dir()
library(GGally)
source("project.R")
belt
source("project.R")
belt
head(pml, 30)
belt
belt <- c( belt, 'classe')
belt[ grepl('_x|_y|_z', belt) ]
belt[ !grepl('_x|_y|_z', belt) ]
belt1 <- belt[ !grepl('_x|_y|_z', belt) ]
belt[ grepl('_x|_y|_z', belt) ]
belt[ grepl('(?=gyros)_x|_y|_z', belt) ]
belt[ grepl('(?=gyros)_x|_y|_z', belt, perl + T) ]
belt[ grepl('(?=gyros)_x|_y|_z', belt, perl = T) ]
belt[ grepl('(?gyros)_x|_y|_z', belt, perl = T) ]
belt[ grepl('(?=gyros)_x|_y|_z', belt, perl = T) ]
belt[ grepl('(?<=gyros)_x|_y|_z', belt, perl = T) ]
belt[ grepl('(?<=gyros)(_x|_y|_z)', belt, perl = T) ]
belt[ grepl('(?<=gyros){_x|_y|_z}', belt, perl = T) ]
belt
belt[ grepl('(?<=gyros){_x|_y|_z}', belt, perl = T) ]
belt[ grepl('(?<=gyros)_x|_y|_z', belt, perl = T) ]
belt[ grepl('(?<=gyros)_x', belt, perl = T) ]
belt[ grepl('(?<=gyros)\_x', belt, perl = T) ]
belt[ grepl('(?<=gyros)_x', belt, perl = T) ]
belt
belt[ grepl('(?<=gyros)_x', belt, perl = T) ]
belt[ grepl('(?<=gyros)', belt, perl = T) ]
belt[ grepl('(?<=gyros)(_x)', belt, perl = T) ]
belt[ grepl('gyros', belt, perl = T) ]
belt2 <- belt[ grepl('gyros', belt, perl = T) ]
belt3 <- belt[ grepl('accel', belt, perl = T) ]
belt4 <- belt[ grepl('magnet', belt) ]
belt2 <- c(belt2, 'classe')
belt3 <- c(belt3, 'classe')
belt4 <- c(belt4, 'classe')
ggpairs( pml[belt1] )
ggpairs( pml[belt2] )
ggpairs( pml[belt3] )
ggpairs( pml[belt4] )
belt
names(pml)
cor( pml$roll_arm, pml$yaw_arm)
cor( pml$roll_arm, pml$pitch_arm)
names(pml)[ grepl('arm', names(pml)) ]
names(pml)[ grepl('_arm', names(pml)) ]
names(pml)
pml[,160]
cor(pml[,160])
cor(pml[1:159,160])
cor(pml[1:159], pml[,160])
pml[1..195]
pml[1..159]
pml[1,159]
pml[1]
pml[1:159,]
head(pml[1:159,])
head(pml[,1:159])
cor( pml[,1:159]), pml[,160] )
pml[,1:195]
head(pml[,1:159])
pml[,1:159]
cor( pml[,1:159]), pml[,160] )
cor( pml[,1:159], pml[,160] )
cor( pml[belt], pml[,160] )
pml[belt]
belt
belt_only <-belt[1:12]
belt_only
cor( pml[belt_only], pml[,160] )
std(pml)
str(pml)
str(pml$classe)
cor( pml[belt_only], as.Integer(pml[,160]) )
cor( pml[belt_only], as.integer(pml[,160]) )
cor( pml[belt_only], pml[belt_only] )
corTest <- cor( pml[belt_only], pml[belt_only] )
corTest[ corTest >0.8]
corTest[ abs(corTest) >0.8]
corTestDF <- data.frame(corTest)
head(corTestDF)
?lapply
lapply( names(corTestDF), funtion(x) { abs(x)> 0.8 } )
coFN <- function(x) { abs(x) > 0.8 }
lapply( names(corTestDF), corFN )
lapply( names(corTestDF), FUN = corFN )
lapply( names(corTestDF), FUN = coFN )
lapply( corTestDF, FUN = coFN )
sapply( corTestDF, FUN = coFN )
testResults <- sapply( corTestDF, FUN = coFN )
corTest[ testResults ]
corTestDF[ testResults ]
corTestDF
corTestDF %>% select( testResults )
library(dplyr)
corTestDF %>% select( testResults )
corTestDF[ testResults ]
corTest[ testResults ]
testResults
corTest
testResults <- sapply( corTest, FUN = coFN )
testResults
testResults <- sapply( corTestDF, FUN = coFN )
testResults
rownames(testResults) <- rownames(corTest)
testResults
testResults[ testResults == T]
testResults[ testResults ]
testResults
library(caret)
nsv <- nearZeroVar(pml, saveMetrics = T)
nsv
nsv <- nearZeroVar(pml)
nsv
pml[ nsv ]
head( pml[ nsv ] )
head( pml[ -nsv ] )
belt
savehistory("history.R")
source("project.R")
head(pml)
source("project.R")
arms <- filterFields( pml, 'arm' )
arms
source("project.R")
arms <- filterFields( pml, 'arm' )
source("project.R")
arms <- filterFields( pml, 'arm' )
arms
source("project.R")
arms <- filterFields( pml, 'arm' )
arms
arms[[1]]
pml[arms[1]]
pml[arms[[1]]
]
pml[arms[[1]]]
source("project.R")
source("project.R")
test <- allFields( pml )
test <- allFields( pml, 'belt' )
source("project.R")
test <- allFields( pml )
test
source("project.R")
test <- allFields( pml )
test
source("project.R")
test <- allFields(pml)
test
source("project.R")
test <- allFields(pml)
test
source("project.R")
bestfields <- bestFields( pml )
bestfields <- c( bestFields(pml), 'classe')
bestfields
bests <- c( bestFields(pml), 'classe')
bests
savehistory("history.R")
