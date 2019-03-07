function love.load()  
  button ={}
  button.x = 500
  button.y = 400
  button.size = 50

  score = 0
  timer = 0

  myFont = love.graphics.newFont(40)
end

function love.update(dt)
end

function love.draw()
  love.graphics.setColor(0, 0, 255)
  love.graphics.rectangle("fill", 0, 0, 200, 100)
  love.graphics.setColor(0, 255, 255)
  love.graphics.rectangle("line", 300, 300, 50, 50)
  love.graphics.circle("fill", button.x, button.y, button.size)

  love.graphics.setColor(255, 255, 255)
  love.graphics.setFont(myFont)
  love.graphics.print(score)

end

function love.mousepressed( x, y, b, istouch )
  if b == 1 then
    if distanceBetween(button.x, button.y, love.mouse.getX(), love.mouse.getY()) < button.size then
      score = score + 1
      button.x = math.random(button.size, love.graphics.getWidth() - button.size)
      button.y = math.random(button.size, love.graphics.getHeight() - button.size)

      math.random(0, 20)
    end
  end
end
 
function distanceBetween(x1, y1, x2, y2)
  return math.sqrt((y2 - y1)^2 + (x2 - x1)^2)
end