a <- 1:5
b <- 1:10
a+b #It actually isn't well defined, but R doesn't cares, it just solves it with the repetition trick.
a-b #Basically, it completes 'a' so it matches 'b' in size, repeating the elements.
a*b #So 'a' acts as (1,2,3,4,5,1,2,3,4,5) for the purposes of these 3 operations.
x <- c(a,b)
y <- rev(x)
unique(x)
hist(cumsum(x))
mean(y)
var(y)
sd(y)
