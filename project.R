library(caret)
library(dplyr)
library(GGally)

readTrainingData <- function() {
	read.csv( "pml-training.csv" )
}


filterFields <- function( pml, exercise, classe = TRUE ) { 
	exercise <- paste( '_', exercise, sep = '' )
	exercise_all <- names(pml)[ grepl( exercise, names(pml) ) & !grepl('max|min|kurto|skew|avg|stddev|amplit|total|var', names(pml) ) ]
	exercise1 <- exercise_all[ !grepl('_x|_y|_z', exercise_all) ]
	exercise2 <- exercise_all[ grepl('gyros', exercise_all) ]
	exercise3 <- exercise_all[ grepl('accel', exercise_all) ]
	exercise4 <- exercise_all[ grepl('magnet', exercise_all) ]

	if ( classe ) {
		exercise1 <- c(exercise1, 'classe')
		exercise2 <- c(exercise2, 'classe')
		exercise3 <- c(exercise3, 'classe')
		exercise4 <- c(exercise4, 'classe')
	}

	list( exercise1, exercise2, exercise3, exercise4 )
}


exerciseFields <- function( pml, exercise ) {
	exs <- filterFields( pml, exercise, FALSE )
	total <- c()
	for( x in exs ) {
		total <- c(total, x)
	}
	total
}


bestFields <- function( pml ) {
	belts <- exerciseFields( pml, 'belt' )
	arms <- exerciseFields( pml, '_arm' )
	forearms <- exerciseFields( pml, 'forearm' )
	dumbbells <- exerciseFields( pml, 'dumbbell' )

	c( belts, arms, forearms, dumbbells )
}
