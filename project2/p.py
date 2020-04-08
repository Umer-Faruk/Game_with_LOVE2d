# #validating

# import numpy as np

# m =[[1,2,3,4,1,6,7,8,9],
#      [4,5,6,7,8,9,1,2,3],
#      [1,8,9,1,2,3,4,5,6],
#      [0,2,3,4,5,3,5,6,1],
#      [0,2,3,4,5,3,5,6,1],
#      [3,2,3,4,5,3,5,6,1],
#      [1,2,1,4,5,3,5,6,1],
#      [0,2,3,4,5,3,5,6,1],
#      [0,2,3,4,5,3,5,6,1]]

# print(np.matrix(m))


# # def valid(x,y,n):
# #      global m
# #      for i in range(0,9):
# #           if m[i][x] == n:
# #                print("false")

# # valid(1,1,2)
# n=0
# x=2
# y=1
# v = 3

# def valid(v,x,y):
#      r = 0
#      c = 0
#      b =0
#      for i in range(9):
#          if m[x][i] == v  :
#                r += 1
#                if r >=2  :
#                     print(" row same")
#                     print(c)
#                     return False
              

#      for j in range(9):
#           print(m[j][y])
#           if m[j][y] == v :
#                c += 1
#                if c >= 2:
#                     print(" colum same")
#                     return False


#      for i in range(3):
#           for j in range(3):
#                print(m[i][j])
#                if m[i+(x//3)*3][j+(y//3)*3] == v:
#                     b += 1
#                     if b >= 2 :
#                          print(" box same")
#                          return False
#      # return True


# print(valid(int(input("enter value")),int(input("enter x pos")),int(input("enter y pos"))))

# l =[1,-1,2,3,-3,-2]
# print(sum(l))

class node:
     def __init__(self,data):
          self.data = data
          self.next =  None

class Linkedlist:
     def __init__(self):
          self.head = None

     def lprint(self):
          temp = self.head
          while(temp):
               print(temp.data,end = "->")
               temp = temp.next
     def fpush(self,newdata):
          new_node = node(newdata)
          new_node.next = self.head
          self.head = new_node
     def lpush(self,newdata):
          new_node = node(newdata)

          if self.head == None:
               self.head = new_node
               return
          
          thead = self.head 
          while thead.next:
               thead = thead.next
          thead.next  = new_node 




if __name__ =='__main__':
     ll = Linkedlist()
     ll.head = node(50)
     n1 = node(70)
     n3 = node(60)

     ll.head.next = n1
   
     n1.next = n3
     ll.lprint()
     ll.fpush(int(input("enter the node at first")))
     ll.lprint()
     ll.lpush(int(input("enter the node at last")))
     ll.lprint()








