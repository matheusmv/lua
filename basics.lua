-- Single line comments
--[[
    Multi
    line
    comments
--]]

HOST = "172.0.0.1"
PORT = "22"

print(HOST .. ":" .. PORT)
io.write(string.format("%s:%s\n", HOST, PORT))

HOST_AND_PORT = HOST .. ":" .. PORT

io.write(HOST_AND_PORT .. "\n")
io.write("Size of string: ", #HOST_AND_PORT, "\n")

io.write("Max int: ", math.maxinteger, "\n")
io.write("Min int: ", math.mininteger, "\n")

local stringType = "this is a string"
local integerType = 42
local floatType = 3.1415
local booleanType = false
local functionType = function(a, b) return a + b end
local nilType = nil

io.write(string.format([[
    %s   (%s)
    %d   (%s)
    %.2f (%s)
    %s   (%s)
    %s   (%s)
    %s   (%s)
]], stringType, type(stringType), integerType, type(integerType), floatType,
                       type(floatType), booleanType, type(booleanType),
                       functionType, type(functionType), nilType, type(nilType)))

print("by default undefined variables are " .. type(randomVar), "\n")
