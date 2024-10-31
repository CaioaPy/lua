local function wait(seconds)
    os.execute("sleep " .. tonumber(seconds))
end

local function hi()
    print("hiii! XDDD \n thank you for waiting")
end
print("starting system!")
wait(1)
print("just wait a second")
wait(3)
hi()