local months = {
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December",
}

for i = 1, #months, 1 do
    io.write(i .. ": " .. months[i])
    if i % 3 == 0 then
        print()
    end
end

local array = {}

for i = 1, 9 do
    array[i] = i
end

print(table.concat(array, ", ", 1, 3))
print(table.concat(array, ", ", 4, 6))
print(table.concat(array, ", ", 7, 9))

print("array: ")
for index, value in pairs(array) do
    print("index: " .. index .. " value: " .. value)
end

local matrix = {}

for i = 1, 3 do
    matrix[i] = {}
    for j = 1, 3 do
        matrix[i][j] = tostring(i) .. "x" .. tostring(j)
    end
end

for i = 1, 3 do
    for j = 1, 3 do
        io.write(matrix[i][j], " ")
    end
    print()
end

print(matrix[1][1])
print(matrix[3][3])

print("matrix: ")
for row, arr in pairs(matrix) do
    for col, value in pairs(arr) do
        print("[row: " .. row .. ", col: " .. col .. "] value: " .. value)
    end
end
