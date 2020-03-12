local menu = {}

local menuItem = 0

function menu:load()
  menuItem = 0
end

function menu:draw()
  love.graphics.setNewFont(20)
  love.graphics.print("Return to Game", 350, 280)
  love.graphics.print("Options", 350, 300)
  love.graphics.print("Exit to Desktop", 350, 320)
  love.graphics.setNewFont(40)
  love.graphics.print("•", 330, 270 + (20 * menuItem))

end

function menu:keyreleased(key, code)
  if key == 'escape' then
    Gamestate.switch(StateGame)
  end
  if key == 'down' then
    menuItem = (menuItem + 1) % 3
  end
  if key == 'up' then
    menuItem = (menuItem - 1) % 3
  end
  if key == 'return' then
    if menuItem == 0 then
      Gamestate.switch(StateGame)
    end
    if menuItem == 1 then
      Gamestate.switch(StateOptions)
    end
    if menuItem == 2 then
      love.event.quit()
    end
  end
end

return menu