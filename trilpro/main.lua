local hero = {x=500,y=500,width = 40 ,height = 40,c ={1,1,0},speed = 300}
local vil = {x=50,y=50,width=50,height=50}
local b2 = {x=80,y=80,width= 40,height=40,c={0,0,1}}



require("first")
canShoot = true
canShootTimerMax = 0.2
canShootTimer = canShootTimerMax

function love.load()
     print(test)
     print("hello")

     magazine={}
	for i=0,5 do
		bullet = {}
		bullet.width = 5
		bullet.height = 10
		bullet.x = hero.x + 20*i + bullet.width
		bullet.y = hero.y + 10*i - bullet.height
		bullet.speed = 300
		table.insert(magazine, bullet)
     end	
     
     bimage = love.graphics.newImage('bullet.png')
     bullets = {}
     -- print(vil.x,vil.y,vil.width,vil.height)


end

function iscollide(ax,ay,aw,ah,bx,by,bw,bh)

     return ax < bx+bw and ay < by+bh and bx < ax+aw and by < ay+ah 

end

function love.update(dt)

     -- if ((b1.x + b1.width) * (b1.y+b1.height)) == ((b2.x + b2.width) * (b2.y+b2.height)) then 
     --      print("collision")
     -- end

     if love.keyboard.isDown("left") then
		hero.x = hero.x - hero.speed * dt
	elseif love.keyboard.isDown("right") then
		hero.x = hero.x + hero.speed * dt
     end

     -- for i,v in ipairs(magazine) do
	-- 	if v.y > 40 then
	-- 		v.y = v.y - bullet.speed * dt		
	-- 	else
	-- 	table.remove(magazine, i)
	-- 	end	
     -- end


     canShootTimer = canShootTimer - (1 * dt)
     if canShootTimer < 0 then
       canShoot = true
     end

     

     if love.keyboard.isDown('f') and canShoot then
          newbullet = {x = hero.x , y = hero.y, width = 2,height=4, img = bimage}
          table.insert(bullets,newbullet)

          canShoot = false
    canShootTimer = canShootTimerMax
     end


     -- update the positions of bullets
     for i, bullet in ipairs(bullets) do
          bullet.y = bullet.y - (250 * dt)
          print(bullet.x,bullet.y,bullet.width,bullet.height)
          if iscollide(bullet.x,bullet.y,bullet.width,bullet.height,vil.x,vil.y,vil.width,vil.height) then
               table.remove(bullets,i)
          end
          if bullet.y < 0 then -- remove bullets when they pass off the screen
               table.remove(bullets, i)
             end
     end
     







end  

function love.draw()
     love.graphics.setColor(hero.c)
     love.graphics.rectangle("fill",hero.x,hero.y,hero.width,hero.height)

     -- love.graphics.setColor(b2.c)
     -- love.graphics.rectangle("fill",b2.x,b2.y,b2.width,b2.height)
     -- for i,v in ipairs(magazine) do
	-- 	love.graphics.rectangle("fill", v.x, v.y, v.width, v.height)
     -- end	

     love.graphics.rectangle("fill",vil.x,vil.y,vil.width,vil.height)
   
     
     for i, bullet in ipairs(bullets) do
          love.graphics.draw(bullet.img, bullet.x, bullet.y)
        end




end

-- function love.keypressed(key)
--      if key == 'up' then
--           b1.y = b1.y - 10 

--      end
--      if key == 'down' then
--           b1.y = b1.y + 10

--      end
--      if key == 'right' then
--           b1.x = b1.x +10

--      end
--      if key == 'left' then
--           b1.x = b1.x -10
--      end

-- end