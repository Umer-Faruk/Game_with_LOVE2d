

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
          print("")
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
     def Revll(self):
     
          pp = None
          np = None
          cp = self.head

          while cp:
               np = cp.next
               cp.next = pp
               cp = np
               pp = cp
          self.head = pp

def Revprintll(n):

     tn = n
     if tn:
          Revprintll(tn.next)
          print(tn.data,end="->")


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
     # ll.lprint()
     Revprintll(ll.head)
     print("")
     ll.lprint()
     ll.Revll()
     ll.lprint()









