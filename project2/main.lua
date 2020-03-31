x = 42
y = 42
function love.load()

     Object = require 'classic'
     require 'text'
     v = " "
     k = ""
     flag = true
     

     t1 = TEXT()
	
          	
           mx = 42
           my = 42

     -- m = {
     --      {1,2,3,4,5,6,7,8,9},
     --      {2,3,4,5,6,7,8,9,1},
     --      {2,3,4,5,6,7,8,6,5},
     --      {3,4,5,6,5,4,3,2,1},
     --      {2,3,4,5,6,7,8,9,6},
     --      {4,5,6,3,4,5,6,7,2},
     --      {4,5,6,7,3,6,3,1,4},
     --      {5,3,2,6,4,7,8,3,8},
     --      {3,4,5,6,1,2,4,5,6},

     -- }

     m = {
          {0,0,0,0,0,0,0,0,0},
          {0,0,0,0,0,0,0,0,0},
          {0,0,0,0,0,0,0,0,0},
          {0,0,0,0,0,0,0,0,0},
          {0,0,0,0,0,0,0,0,0},
          {0,0,0,0,0,0,0,0,0},
          {0,0,0,0,0,0,0,0,0},
          {0,0,0,6,0,0,0,0,0},
          {0,0,0,0,0,0,0,0,0},

     }

     
end
 
function love.update(dt)
	-- player.act_y = player.act_y - ((player.act_y - player.grid_y) * player.speed * dt)
     -- player.act_x = player.act_x - ((player.act_x - player.grid_x) * player.speed * dt)
     
     -- x = x
     -- y = y
     -- -- if love.mouse.isDown(2) then
     -- --      mx = love.mouse.getX()
     -- --      my =  love.mouse.getY() -- we will increase the variable by 1 for every second the button is held down
     -- -- end

     -- mx, my = love.mouse.getPosition()
     -- x = mx
     -- y = my

     -- if v == "5" then
     --      print(v)
     -- end


     

end
 
function love.draw()
     for i=1 ,9 do
          for j = 1 ,9 do
               
               if flag then
                love.graphics.setColor(0,255,0)
                love.graphics.rectangle('line',j*42,i*42,42,42)
               else
               
                    love.graphics.setColor(255,0,0)
                    love.graphics.rectangle('line',j*42,i*42,42,42)
               end
               -- love.graphics.print("1",j*42,i*42)
               t1.draw(m[i][j],j*44,i*44)
               -- t1.draw(t1,j*44,i*44)

          end

     end

     -- if pos(x/42,y/42,k) then
     --      love.graphics.setColor(255,0,0)
     --      love.graphics.rectangle("fill",(x/42)*42,(y/42)*42)
     -- end
     
     -- for i=1,3 do
     --      for j=1,3 do
     --           love.graphics.setColor(0,25,56)
     --           love.graphics.rectangle('line',(j*42)+((1/3)*42),(i*42)+((6/3)*42),42,42)
     --      end
     -- end

     



     -- for i=1,9 do
     --      if m[x/42][i] == k then
     --      love.graphics.setColor(0,0,255)
     --      love.graphics.rectangle("line",(x/42)*42,i*42,42,42)
     --      end
     -- end

     
     -- for j=1,9 do
     --      if m[j][y/42]==k then
     --           love.graphics.setColor(255,25,0)
     --           love.graphics.rectangle("line",(y/42)*42,i*42,42,42)

     --      end
     -- end
               

     


     -- t1.keypressed( key )
     love.graphics.setColor(255,0,0)
     love.graphics.rectangle("line", x, y, 42, 42,6,5,6)

     -- print(mx)
     -- print(my)

     -- for i=1, #m do 
     --      for j= 1, #m do
     --           print(m[i][j])
     --      end
     -- end
     -- print(x,y)

     -- love.graphics.print(text, 0, 0, love.graphics.getWidth())
     print(v)
     -- r = {0}
     -- c = {0}
     -- b ={0}
     rv=0
     cv =0
     

     --row color
     for i=1,8 do
          rv =  m[i][y/42]
          if m[i+1][y/42] == rv then

          love.graphics.setColor(0,0,255)
          love.graphics.rectangle("line",i*42,y,42,42)
          end
     end
     for j=1,8 do 
          cv= m[x/42][j]
          if m[x/42][j+1] == cv then
           love.graphics.setColor(0,0,255)
           love.graphics.rectangle("line",x,j*42,42,42)
          end
     
     end

     -- for i=1,3 do 
     --      for j=1,3 do
     --           love.graphics.setColor(78,0,97)
     --           love.graphics.rectangle("line",(i*42)+(((x/42)/3)*84),(j*42)+(((y/42)/3)*84),42,42)
     --      end
     -- end






end
 
function love.keypressed(key)
     k = key
     print(key)
     if key == "up" then
          if y >= 46 then
               y = y - 42
          end
          print(y)
     end
     if key == "down" then
          if y < 378 then
               y = y + 42
          end
          print( y)
     end


     if key == "left" then
          if x >= 46 then
          x = x - 42
          end
          print(x)
     end

     if key == "right" then
          if  x < 378 then
                x =  x + 42
           end
          print( x)


     end
     
     if key == 'kp1'  or key == '1' then 
          m[y/42][x/42]=1
          flag = validate(x,y,m,1)
          
     
     elseif key == "2" or key == 'kp2' then
          m[y/42][x/42]= 2
          flag = validate(x,y,m,2)

     elseif key == "3"  or key =='kp3' then
          m[y/42][x/42]= 3
          flag = validate(x,y,m,3)

     elseif key == "4"  or key =='kp4' then
          m[y/42][x/42]= 4
          flag = validate(x,y,m,4)

     elseif key == "5" or key =='kp5' then
          m[y/42][x/42]= 5 
          flag = validate(x,y,m,5)

     elseif key == "6" or key =='kp6' then
          m[y/42][x/42]= 6
          flag = validate(x,y,m,6)

     elseif key == "7" or key =='kp7' then
          m[y/42][x/42]= 7
          flag = validate(x,y,m,7)

     elseif key == "8" or key =='kp8' then
          m[y/42][x/42]= 8
          flag = validate(x,y,m,8)

     elseif key == "9" or key =='kp9' then
          m[y/42][x/42]= 9
          flag = validate(x,y,m,9)
     end

     
     -- if key == "v" the
     --      -- for i=1,9 do
          
     --           flag = validate(x,y,m,)
     --      -- end
     -- end
 
    

end


-- function pos(x,y,n) 
    
--     for i=1  ,9 do
--         if m[x][i]== n then
--             return true
--         end
--     end

--     for i=1 ,9 do 
--         if m[i][y]==n then
--             return true
--         end

--     end
--     for i =1, 3 do
--         for j=1, 3 do
--             if m[i+((x/3)*42)][j+((y/3)*42)]==n then
--                 return true
--             end
--           end
--      end
--     return false
-- end



function validate(x,y,m,vv)

     r = 0
     c = 0
     b =0

     for i =1 ,9 do

          if m[x/42][i] == vv then
               r = r+1
               if r >= 2 then
                    return false
               end
               
          end
     end
     for i=1 ,9 do 
           if m[i][y/42]== vv then
               c = c +1
               if c >= 2 then

                     return false
               end
          end
          
      end
     -- for i =1, 3 do
     --    for j=1, 3 do
     --        if m[i+(((x/42)/3)*42)][j+(((y/42)/3)*42)]== vv  then
     --            return false
     --        end
     --      end
     -- end
    
      return true
     

     
end


