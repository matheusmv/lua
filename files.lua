local fileName = "test.txt"

local file = io.open(fileName, "w+")

file:write("Lua is a powerful, efficient, lightweight, embeddable scripting language.\n")
file:write("It supports procedural programming, object-oriented programming, functional\n")
file:write("programming, data-driven programming, and data description.\n")

file:seek("set", 0)

print(file:read("a"))

file:close()

file = io.open(fileName, "r")

for line in file:lines(...) do
    print(line)
end

file:close()