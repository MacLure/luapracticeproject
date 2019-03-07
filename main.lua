function love.load()
  number = 0
end

function love.update(dt)
  number = number + 1
end

function love.draw()
  love.graphics.print(number)
  love.graphics.rectangle("fill", 0, 0, 200, 100)
  love.graphics.rectangle("line", 300, 300, 50, 50)
  love.graphics.circle("fill", 400, 100, 100)
end