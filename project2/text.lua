TEXT = Object.extend(Object)

function TEXT.new(self)
     self.v = 5

end

function TEXT.draw(v,x,y)
     love.graphics.print(v,x,y)
end


-- function TEXT.keypressed( key )
--      -- if key == "return" then
--      --    text = "RETURN is being pressed!"
--      -- end
--      self.v = key
-- end

function TEXT.pos(x,y,n) 
    
     for i=1  ,9 do
         if m[x][i]==n then
               print("not valid plCE")
             return true
         end
     end
 
     for i=1 ,9 do 
         if m[i][y]==n then
          print("not valid plCE")

             return true
         end
 
     end
     for i =1, 3 do
         for j=1, 3 do
             if m[i+((x/3)*42)][j+((y/3)*42)]==n then
               print("not valid plCE")

                 return true
             end
           end
      end
      print("valid place")
     return false
 end
 