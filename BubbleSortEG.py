# Bubble Sort in R

bubble_sort <- function(arr) {
  n <- length(arr)
  
  for (i in 1:(n - 1)) {
    
    # Flag to check if swapping happens
    swapped <- FALSE
    
    for (j in 1:(n - i)) {
      
      # Compare adjacent elements
      if (arr[j] > arr[j + 1]) {
        
        # Swap elements
        temp <- arr[j]
        arr[j] <- arr[j + 1]
        arr[j + 1] <- temp
        
        swapped <- TRUE
      }
    }
    
    # Stop early if array is already sorted
    if (!swapped) {
      break
    }
  }
  
  return(arr)
}

# Example usage
numbers <- c(64, 34, 25, 12, 22, 11, 90)

sorted_numbers <- bubble_sort(numbers)

print(sorted_numbers)
