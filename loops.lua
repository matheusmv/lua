-- https://www.lua.org/pil/7.html

local num = 10;
while num > 0 do
    io.write(num .. " ")

    num = num - 1

    if num == 6 then
        print()
        break
    end
end

for i = 1, 10, 1 do io.write(i, " ") end
print()

for i = 10, 1, -1 do io.write(i, " ") end
print()

repeat
    io.write("enter your name: ")
    local input = io.read()

    if input ~= "end" then
        print("hello " .. input .. "!!!")
    end

until input == "end"
