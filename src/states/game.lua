local game = {}

function game:draw()
  love.graphics.setNewFont(50)
  love.graphics.print("Hi.", 390, 280)
end

function game:keyreleased(key, code)
  if key == 'escape' then
    Gamestate.switch(StateMenu)
  end
end

return game