local message = [[
    Lua is a powerful, efficient, lightweight, embeddable scripting language.
    It supports procedural programming, object-oriented programming, functional
    programming, data-driven programming, and data description.
]]

print("length: " .. string.len(message))
print("length: " .. #message)
print("replace first ',' for '-': " .. string.gsub(message, ",", "-", 1))
print("replace all ',' for '-': " .. string.gsub(message, ",", "-"))
print("all lower: " .. string.lower(message))
print("all upper: " .. string.upper(message))

local months = {
    "January", "February", "March", "April", "May", "June", "July", "August",
    "September", "October", "November", "December"
}

print(table.concat(months, ", "))
