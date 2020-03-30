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