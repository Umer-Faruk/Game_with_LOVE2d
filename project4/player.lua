
Player = Object.extend(Object)
-- canShoot = true
-- canShootTimerMax = 0.5
-- canShootTimer = canShootTimerMax

local  nbullet = 0
     local mnbullet = 6
img = love.graphics.newImage("sheep.png")

function Player:new()
     self.p1 = {x=10,y=10,width=40,heigth=40,c={1,0,1},speed = 300}
     -- self.BL ={}
   


     self.bimage = love.graphics.newImage('bullet.png')
    self.bullets = {}
--     print(p1bullethose.x,p1bullethose.y,p1bullethose.width,p1bullethose.height)


     
end

function Player:update(dt)
    if love.keyboard.isDown("right") then 
     self.p1.x = self.p1.x + self.p1.speed *dt
    elseif love.keyboard.isDown("left") then
     self.p1.x = self.p1.x - self.p1.speed *dt

    end

    local wind_width = love.graphics.getWidth()


    if self.p1.x < 0 then
     self.p1.x = 0
    elseif self.p1.x > wind_width-self.p1.width then
     self.p1.x =  wind_width - self.p1.width 
    end


    canShootTimer = canShootTimer - (1 * dt)
     if canShootTimer < 0 then
           canShoot = true
     end

    if love.keyboard.isDown('up') and  canShoot then 
          newbullet = { x= self.p1.x,y = self.p1.y,img = self.bimage}
         

          if nbullet < mnbullet then
          table.insert(self.bullets,newbullet)
          nbullet = nbullet + 1
          end
          
          canShoot = false
          canShootTimer = canShootTimerMax

    end

    for i, bullet in ipairs(self.bullets) do
     bullet.y = bullet.y + (250 * dt)
 
     if bullet.y > 800 then -- remove bullets when they pass off the screen
       table.remove(self.bullets, i)
     end
   end
   --reset  ullets
   if iscollide(self.p1.x,self.p1.y,self.p1.width,self.p1.heigth,p2bullethose.x,p2bullethose.y,p2bullethose.width,p2bullethose.height) then
     nbullet = 0
     mnbullet = 6
   end
    
    



end

function Player:draw()
     love.graphics.setColor(self.p1.c)
     love.graphics.rectangle("fill",self.p1.x,self.p1.y,self.p1.width,self.p1.heigth)

     for i, bullet in ipairs(self.bullets) do
          love.graphics.draw(bullet.img, bullet.x, bullet.y)
        end
      
     



end

function iscollide(ax,ay,aw,ah,bx,by,bw,bh)

     return ax < bx+bw and ay < by+bh and bx < ax+aw and by < ay+ah 

end

