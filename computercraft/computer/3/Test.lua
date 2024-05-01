local monitorSide = "top"
local monitor = peripheral.wrap(monitorSide)
print("Monitor detected:", monitor ~= nil)

monitor.clear()
monitor.setTextColor(colors.white)
monitor.setTextScale(4)
monitor.setTextScale(4)

local screenWidth, screenHeight = monitor.getSize()
local centerX = math.floor(screenWidth / 2)
local centerY = math.floor(screenHeight / 2)
monitor.setCursorPos(centerX - 5, centerY)
monitor.write("Hello, world!")
monitor.setCursorPos(1, 1)
