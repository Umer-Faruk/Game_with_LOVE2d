Circle = Object.extend(Object)
function Circle.new(self)
     self.x=100
     self.y =50
     self.r=10
     self.speed=20
end

function Circle.update(self,dt)
     rm = love.math.random(1, 800)
     self.x = self.x +self.speed*dt
end

function Circle.draw(self)
     love.graphics.circle("fill",self.x,self.y,self.r)
end