# Create a 3x3 matrix
matrix_A <- matrix(c(2, 4, 6,1, 3, 5, 7, 8, 9), nrow=3, byrow=TRUE)

print("Original Matrix:")
print(matrix_A)

# Transpose the matrix
transposed_A <- t(matrix_A)
print("Transposed Matrix:")
print(transposed_A)

# Calculate determinant
det_A <- det(matrix_A)
print(paste("Determinant:", det_A))

# Invert the matrix (if determinant is non-zero)
if (det_A != 0) {
  inverse_A <- solve(matrix_A)
  print("Inverse of the Matrix:")
  print(inverse_A)
} else {
  print("Matrix is singular (determinant = 0), so it cannot be inverted.")
}
