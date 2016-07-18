esc <- 11:15
vec <- seq(1:19, 2)
x <- c(esc,vec)
x[c(2,3,5)] <- x[c(2,3,5)] * -1
x <- x[-c(4,8)]
length(x)
Nombres <- c('A','D','X','Z','Y','M','L','B','V','E','R','A','B','T','Z','Z','U')
which(Nombres == 'A') #This function wasn't described anywhere in the class, was in the documentation though.
which(Nombres == 'B')
which(Nombres == 'L')
which(Nombres == 'A' | Nombres == 'Z')
