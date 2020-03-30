


function love.load()
     Object = require 'classic'
     require 'rectangle'
     require 'circle'
     require 'player1'
     r1 = Rectangle()
     c1 = Circle()
     p1 = Player()
     love.graphics.setBackgroundColor(153/255,1,1)
     love.graphics.setColor(0,0,0)

end

function love.update(dt)
     r1.update(r1, dt)
     c1.update(c1,dt)
     p1.update(p1,dt)
     c1.draw(c1)
end

function love.draw()
     r1.draw(r1)
     c1.draw(c1)
     
     love.graphics.rectangle("line",0,0,800,600)
     p1.draw(p1)

end
function love.keypressed(key, scancode, isrepeat)
     p1.drow(p1,key)
end



