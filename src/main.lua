lurker = require "lib.lurker.lurker"
Gamestate = require "lib.hump.gamestate"

config = require "conf"

StateGame = require "states.game"
StateMenu = require "states.menu"
StateOptions = require "states.options"

function love.load()
    Gamestate.registerEvents()
    Gamestate.switch(StateGame)
end

function love.update()
  if config.hot_reload then
    lurker.update()
  end
end