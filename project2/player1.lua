Player = Object.extend(Object)

function Player.new(self)
     self.x = 10
     self.y = 10
     self.speed=10
     self.width = 50
     self.height = 50
     self.w =''
end

function Player.update(self,dt)

               if love.keyboard.isDown("right") then
                    if self.x <= 744  then
                         self.x = self.x + 400 * dt
                    end
                    
                   
               end
               if love.keyboard.isDown("left") then
                    if self.x >=6.9 then
                     self.x = self.x - 400 * dt
                    end
                    -- print(x)
               end
               if love.keyboard.isDown("up") then
                    if self.y>=1 then
                         self.y = self.y - 400 * dt
                    end
                    -- print(y)
               end
               if love.keyboard.isDown("down") then
                    if self.y <= 550 then
                         self.y = self.y + 400 * dt
                    end
                    
                    
               end

               if love.keyboard.isDown("w") then
                    self.width = self.width+5
               end
               if love.keyboard.isDown("h") then
                    self.height = self.height+5
               end
               if love.keyboard.isDown("r") then
                    self.width = self.width-5
                    self.height = self.height-5

               end

          

end
function Player.draw(self)
     love.graphics.rectangle("line",self.x,self.y,self.width,self.height)
     

end

function Player.drow(self,key)
     self.w = key
end
