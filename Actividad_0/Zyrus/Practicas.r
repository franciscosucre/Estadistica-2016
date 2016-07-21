#Practice 1

#1
esc <- 11:15
#2
vec <- seq(1,19,2)
#3
x <- c(esc,vec)
#4
x[c(2,3,5)] <- x[c(2,3,5)] * -1
#5
x <- x[-c(4,8)]
#6
length(x)
#7
Nombres <- c('A','D','X','Z','Y','M','L','B','V','E','R','A','B','T','Z','Z','U')
#8
which(Nombres == 'A') #This function wasn't described anywhere in the class, was in the documentation though.
which(Nombres == 'B')
which(Nombres == 'L')
#9
which(Nombres == 'A' | Nombres == 'Z')

#Practice 2

#1
a <- 1:5
#2
b <- 1:10
#3
a+b #It actually isn't well defined, but R doesn't cares, it just solves it with the repetition trick.
a-b #Basically, it completes 'a' so it matches 'b' in size, repeating the elements.
a*b #So 'a' acts as (1,2,3,4,5,1,2,3,4,5) for the purposes of these 3 operations.
#4
x <- c(a,b)
#5
y <- rev(x)
#6
unique(x)
#7
hist(cumsum(x))
#8
mean(y)
var(y)
sd(y)

#Practice 3

#1
data(cars)
#2
attach(cars) #Assuming an attach is used here, the exercise makes no sense without this line.
plot(speed,dist)
#3
speed <- seq(1,25,0.5)
#4
dist <- speed^2
#5
plot(speed,dist)
#6
#One would use $ to access the variables from cars, for example, cars$speed and cars$dist.

#Practice 4

#1
?USJudgeRatings
#2
data(USJudgeRatings) #First, gotta load the data.
subset(USJudgeRatings, rowSums(USJudgeRatings) == max(rowSums(USJudgeRatings))) #Extracting the judge with subset.
subset(USJudgeRatings, rowSums(USJudgeRatings) == min(rowSums(USJudgeRatings))) #Same thing, but with min now.
#3
summary(rowSums(USJudgeRatings)) #This is just the summary of the scoring from all judges, mean is obtained here.
summary(USJudgeRatings) #This is for each individual test, mean is also obtained here.
#4
USJudgeRatings[order(rowSums(USJudgeRatings)),] #Notice order is used to sort dataframes, we're just sorting them by scores.

#Practice 5

#1
substraction <- function(x1, x2) {return (x1 - x2)}
#2
substraction <- function(x1, x2 = 0) {return (x1 - x2)}
#3
substraction <- function(x1, x2 = 2 * x1) {return (x1 - x2)}
