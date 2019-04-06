## 편입수학 p133 기출유형
## RANK
library(Matrix)
A <- matrix(
  c(21,22,23,24,
    31,32,33,34,
    41,42,43,44,
    51,52,53,54), nrow = 4
)
rank(A)
rankMatrix(A)

##p134
B <- matrix(
  c(-2,-5,8,0,-17,
    1,3,-5,-1,5,
    2,4,-6,-2,4,
    1,7,-13,-5,-3), nrow = 4, byrow= T
)
B
rank(B)
rankMatrix(B)

rankMatrix(t(B))

C <- matrix(
  c(1,-2,1,1,2,
    0,1,1,3,4,
    1,2,5,13,5,
    -1,3,0,2,-2),nrow = 4, byrow= T
)
rankMatrix(t(C)) 

## Least Square Solution
## 편입수학 p146 기출유형
A <- matrix(c(
  1,-1,
  2,1,
  -1,2), nrow = 3,byrow = T
  )
B <- matrix(c(3,1,2), ncol=1)
# A(T) transpose

AT <- t(A)
# AT * A
ATA <- AT%*%A
# AT * B
ATB <- AT%*%B
# AT *A 의 역행렬
# 역행렬
inv_ATA <- solve(ATA)
# 최소제곱의 해 
#X = AT*A의 역함수 * AT*B
X <- inv_ATA%*%ATB
X