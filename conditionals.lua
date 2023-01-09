local age = 16
local canVote = age >= 16 and true or false
print("can vote: " .. tostring(canVote))

local bSearch = function(collection, value)
    local low = 0
    local high = #collection

    while low <= high do
        local mid = low + (high - low) // 2

        if collection[mid] == value then
            return mid
        elseif collection[mid] < value then
            low = mid + 1
        else
            high = mid - 1
        end
    end
end

local users = {"jhon", "anne", "carl", "alex", "alyce"}
table.sort(users, function(nameA, nameB)
    return nameA:lower() < nameB:lower()
end)
print(bSearch(users, "carl"))

local groupByOcurrence = function(collection)
    local result = {}

    for _, value in ipairs(collection) do
        if not result[value] then
            result[value] = 1
        else
            local acc = result[value]
            result[value] = acc + 1
        end
    end

    return result
end

local numbers = {1, 1, 1, 1, 2, 2, 3}
local tableOfNumbers = groupByOcurrence(numbers)
for num, total in pairs(tableOfNumbers) do
    print("number: " .. num .. " appeared " .. total .. " times")
end
