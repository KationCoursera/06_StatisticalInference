
#################################
# Exponential distribution      #
# ========================      #
#                               #
# - f(x) = lambda*e^-(lambda*x) #
# - mean = lambda               #
# - Varaince = 1/lambda^2       #
#################################

set.seed(1337) # in order results to be reproducible, I set the seed to a value 1337

# set parameters for our exponential distribution

lambda <- 0.2
nosim <- 10000
n <- 400

hist(rexp(1000))
