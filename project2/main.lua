function love.load()

     Object = require 'classic'
     require 'text'
     v = " "

     t1 = TEXT()
	
          x = 42
          y = 42	
           mx = 42
           my = 42

     m = {
          {1,2,3,4,5,6,7,8,9},
          {2,3,4,5,6,7,8,9,1},
          {2,3,4,5,6,7,8,6,5},
          {3,4,5,6,5,4,3,2,1},
          {2,3,4,5,6,7,8,9,6},
          {4,5,6,3,4,5,6,7,2},
          {4,5,6,7,3,6,3,1,4},
          {5,3,2,6,4,7,8,3,8},
          {3,4,5,6,1,2,4,5,6},

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

     if v == "5" then
          print(v)
     end
end
 
function love.draw()
     for i=1 ,9 do
          for j = 1 ,9 do
               love.graphics.rectangle('line',j*42,i*42,42,42)
               -- love.graphics.print("1",j*42,i*42)
               t1.draw(m[i][j],j*44,i*44)
               -- t1.draw(t1,j*44,i*44)

          end

     end
     

     


     -- t1.keypressed( key )
     love.graphics.rectangle("fill", x, y, 42, 42)

     -- print(mx)
     -- print(my)

     -- for i=1, #m do 
     --      for j= 1, #m do
     --           print(m[i][j])
     --      end
     -- end
     print(x,y)

     -- love.graphics.print(text, 0, 0, love.graphics.getWidth())
     print(v)
end
 
function love.keypressed(key)
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
end

function love.textinput(t)
     v = text .. t
     
end

