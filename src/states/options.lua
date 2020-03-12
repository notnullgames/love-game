local options = {}

function options:draw()
  love.graphics.setNewFont(50)
  love.graphics.print("OPTIONS", 310, 280)
end

function options:keyreleased(key, code)
  if key == 'escape' then
    Gamestate.switch(StateMenu)
  end
end

return options