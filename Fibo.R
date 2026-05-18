# Number of terms
n <- 10

# Initialize vector
fib <- numeric(n)

# First two terms
fib[1] <- 0
fib[2] <- 1

# Generate series
for(i in 3:n) {
  fib[i] <- fib[i - 1] + fib[i - 2]
}

print(fib)
