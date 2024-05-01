local monitorSide = "top"
local monitor = peripheral.wrap(monitorSide)
if monitor == nil then
print("Monitor not found on side " .. monitorSide)
return
end
monitor.clear()
local function shineText(text, color1, color2, duration)
local startTime = os.clock()
while (os.clock() - startTime) < duration do
monitor.setTextColor(color1)
 monitor.write(text)
 os.sleep(0.1)
 monitor.setTextColor(color2)
 monitor.write(text)
 os.sleep(0.1)
 end
 end



monitor.setTextColor(colors.white)
monitor.setBackgroundColor(colors.black)
monitor.setTextScale(4)
local screenWidth, screenHeight = monitor.getSize()
local startX = screenWidth + 1
local startY = math.floor(screenHeight / 2)
local message = "Spells & block"

while true do
local animationDuration = 10 -- Adjust duration as needed
for i = startX, -#message * 30, -1 do
monitor.clear()
monitor.setCursorPos(i, startY)
shineText(message, colors.white, colors.red, 0.5)
end
end
monitor.setCursorPos(1, 1)


