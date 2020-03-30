Player = Object.extend(Object)

function Player.new(self)
     self.x=0
     self.y=0
     self.scale = 42
end

function Player.update(self,dt)
     if  love.keyboard.isDown("right") then
          self.x = self.x + 42
     end
end

function Player.draw(self)
     love.graphics.rectangle("fill",self.x,self.y,42,42)
end

function Player.keypressed(key)
	if key == "up" then
		if testMap(0, -1) then
			player.grid_y = player.grid_y - 32
		end
	elseif key == "down" then
		if testMap(0, 1) then
			player.grid_y = player.grid_y + 32
		end
	elseif key == "left" then
		if testMap(-1, 0) then
			player.grid_x = player.grid_x - 32
		end
	elseif key == "right" then
		if testMap(1, 0) then
			player.grid_x = player.grid_x + 32
		end
	end
end