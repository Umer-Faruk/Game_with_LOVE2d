TEXT = Object.extend(Object)

function TEXT.new(self)
     self.v = 5

end

function TEXT.draw(v,x,y)
     love.graphics.print(v,x,y)
end




function TEXT.validate(x,y,m,q)

    local r = 0
     local c = 0
    local  b =0
    local flag 
     

   --row validation
     for i =1 , 9 do 
          r = r +  m[q][i] 
          print(m[q][i])
          
     end
     print("rsum",r)
     print("***")

     if r ~= 45 then
          print("row falts")
          flag = false
     else 
          print("row perfect")
          -- return true
     end


     --column validation
          
     for i =1 , 9 do 
          c = c+ m[i][q] 
          print(m[i][q])
          
     end
     print("csum",c)
     print("**")
     if c ~= 45 then
          print("column falts")
          flag = false
     else
          print("column perfect")
          -- return true

     end

     return flag

     --box validation
     -- for u =1 , 9 do
     --      for v =1,9 do
     --           for i=1 ,3 do
     --                for j=1,3 do
     --                     b = b + m[i+(u/3)][j+(v/3)]
     --                     -- b = b + m[i][j]
     --                end
     --           end
     --           if b ~= 45 then
     --                print("box falts**")
     --           else
     --                print("box perfect**")
     --           end

     --      end
     -- end

     
     


     -- for i =1, 3 do
     --    for j=1, 3 do
     --        if m[i+(((x/42)/3)*42)][j+(((y/42)/3)*42)]== vv  then
     --            return false
     --        end
     --      end
     -- end
end