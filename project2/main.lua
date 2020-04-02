x = 42
y = 42
local startf = false



local buttons ={}
function love.load()

     print("game options \n q -> quit the Game \n s -> start the Game\n r -> Restart the Game")
    
     Object = require 'classic'
     require 'text'
     require 'matrix'
     v = " "
     k = ""
     flag = true
     timee = 0
     myfount = love.graphics.newFont(50)
     
     

     t1 = TEXT()
     m1 = MATRIX()
     
    local  m = m1.m
          	
          
    

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

     -- m = {
     --      {0,0,0,0,0,0,0,0,0},
     --      {0,0,0,0,0,0,0,0,0},
     --      {0,0,0,0,0,0,0,0,0},
     --      {0,0,0,0,0,0,0,0,0},
     --      {0,0,0,0,0,0,0,0,0},
     --      {0,0,0,0,0,0,0,0,0},
     --      {0,0,0,0,0,0,0,0,0},
     --      {0,0,0,6,0,0,0,0,0},
     --      {0,0,0,0,0,0,0,0,0},  
               -- }
     -- m={
     --      {1,2,3,4,5,6,7,8,9},
     --      {4,5,6,7,8,9,1,2,3},
     --      {7,8,9,1,2,3,4,5,6},
     --      {2,3,4,5,6,7,8,9,1},
     --      {5,6,7,8,9,1,2,3,4},
     --      {8,9,1,2,3,4,5,6,7},
     --      {6,7,8,9,1,2,3,4,5},
     --      {9,1,2,3,4,5,6,7,8},
     --      {3,4,5,6,7,8,9,1,2},
     -- }


     -- }

     -- m={
     --      {1,2,3,4,5,6,7,8,9},
     --      {4,5,6,7,8,9,1,2,3},
     --      {7,8,9,1,2,3,4,5,6},
     --      {2,3,4,5,6,7,8,9,1},
     --      {5,6,7,8,9,1,2,3,4},
     --      {8,9,1,2,3,4,5,6,7},
     --      {6,7,8,9,1,2,3,4,5},
     --      {9,1,2,3,4,5,6,7,8},
     --      {3,4,5,6,7,8,9,1,2},
     -- }

     
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
     -- endt
     if startf then
      timee= (timee + 1)
     end
  
     

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

     -- love.graphics.setFont(myfount)
     love.graphics.setColor(1,1,1)
     love.graphics.print("SUDOKU__",570,30)

     love.graphics.setColor(1,1,1)
     love.graphics.print("time",570,50)

     love.graphics.setColor(1,1,1)
     love.graphics.print(timee/100,570,70)


     


     love.graphics.setColor(255,0,0)
     love.graphics.rectangle("line", x, y, 42, 42,6,5,6)

     rv=0
     cv =0
     

     --row color
     for i=1,9 do
          -- rv =  m[i][y/42]
          -- if m[i+1][y/42] == rv then

          love.graphics.setColor(0,0,255)
          love.graphics.rectangle("line",i*42,y,42,42)
          -- end
     end

     for j=1,9 do 
          -- cv= m[x/42][j]
          -- if m[x/42][j+1] == cv then
           love.graphics.setColor(0,0,255)
           love.graphics.rectangle("line",x,j*42,42,42)
          -- end
     
     end

     -- for i=1,3 do 
     --      for j=1,3 do
     --           love.graphics.setColor(78,0,97)
     --           love.graphics.rectangle("line",(i*42)+(((x/42)/3)*84),(j*42)+(((y/42)/3)*84),42,42)
     --      end
     -- end



     bx=570
     
     -- by=
    
     love.graphics.setColor(0.4,0.4,0.5,1.0)
     love.graphics.print("game options \n s -> Start the Game\n q -> Quit the Game \n ",570,400)

     love.graphics.rectangle("fill",bx,100,200,50,12)

     love.graphics.rectangle("fill",bx,180,200,50,12)

     love.graphics.rectangle("fill",bx,260,200,50,12)


     

     
     love.graphics.setColor(1,1,1)
     -- love.graphics.setFont()
     love.graphics.print("Start Game",bx+60,110)
     love.graphics.print("Restrat Game",bx+60,190)
     love.graphics.print("Exit Game",bx+60,270)
     
     





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
          m[y/42][x/42]= "1"
          -- flag = validate(x,y,m,1)
          
     
     elseif key == "2" or key == 'kp2' then
          m[y/42][x/42]= "2"
          -- flag = validate(x,y,m,2)

     elseif key == "3"  or key =='kp3' then
          m[y/42][x/42]= "3"
          -- flag = validate(x,y,m,3)

     elseif key == "4"  or key =='kp4' then
          m[y/42][x/42]= "4"
          -- flag = validate(x,y,m,4)

     elseif key == "5" or key =='kp5' then
          m[y/42][x/42]= "5"
          -- flag = validate(x,y,m,5)

     elseif key == "6" or key =='kp6' then
          m[y/42][x/42]= "6"
          -- flag = validate(x,y,m,6)

     elseif key == "7" or key =='kp7' then
          m[y/42][x/42]= "7"
          -- flag = validate(x,y,m,7)

     elseif key == "8" or key =='kp8' then
          m[y/42][x/42]= "8"
          -- flag = validate(x,y,m,8)

     elseif key == "9" or key =='kp9' then
          m[y/42][x/42]= "9"
          -- flag = validate(x,y,m,9)
     end

     
     if key == "v" then
          for i=1,9 do
               flag = t1.validate(x,y,m,i)
          end
     end
 
     if key == "q" or ker =="Q" then
     
          love.event.quit()
     end

     if key == "s" or key == "S" then 
          startf = true
     end
    

end






