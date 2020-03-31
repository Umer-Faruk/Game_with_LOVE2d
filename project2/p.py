#validating

import numpy as np

m =[[1,2,3,4,1,6,7,8,9],
     [4,5,6,7,8,9,1,2,3],
     [1,8,9,1,2,3,4,5,6],
     [0,2,3,4,5,3,5,6,1],
     [0,2,3,4,5,3,5,6,1],
     [3,2,3,4,5,3,5,6,1],
     [1,2,1,4,5,3,5,6,1],
     [0,2,3,4,5,3,5,6,1],
     [0,2,3,4,5,3,5,6,1]]

print(np.matrix(m))


# def valid(x,y,n):
#      global m
#      for i in range(0,9):
#           if m[i][x] == n:
#                print("false")

# valid(1,1,2)
n=0
x=2
y=1
v = 3

def valid(v,x,y):
     r = 0
     c = 0
     b =0
     for i in range(9):
         if m[x][i] == v  :
               r += 1
               if r >=2  :
                    print(" row same")
                    print(c)
                    return False
              

     for j in range(9):
          print(m[j][y])
          if m[j][y] == v :
               c += 1
               if c >= 2:
                    print(" colum same")
                    return False


     for i in range(3):
          for j in range(3):
               print(m[i][j])
               if m[i+(x//3)*3][j+(y//3)*3] == v:
                    b += 1
                    if b >= 2 :
                         print(" box same")
                         return False
     # return True


print(valid(int(input("enter value")),int(input("enter x pos")),int(input("enter y pos"))))

