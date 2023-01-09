-- https://www.lua.org/pil/5.html

local john = {id = 1, username = "john", password = "123456", enabled = true}

function LogUser(user)
    if type(user.id) ~= "number" then
        error("no id provided")
    end

    local format = [[
        id: %d
        username: %s
        password: %s
        enabled: %s
]]

    io.write(string.format(format, user.id, user.username, user.password, user.enabled))
end

LogUser(john)

local function fixedRotation(elements)
    local len = #elements
    local index = 1
    local updateIndex = function()
        local val = (index + 1) % len
        if val == 0 then return len end

        return val
    end

    return function()
        local element = elements[index]
        index = updateIndex()
        return element
    end
end

local next = fixedRotation({"|", "/", "-", "\\"})
for _ = 1, 5 do
    print(next())
end

function Log(message, ...)
    print("args: " .. table.concat({...}, ", "))

    for k, v in pairs({...}) do
        print("key: " .. k .. " value: " .. tostring(v))
    end

    local dateTime = os.date("%D %T", os.time())
    io.write(dateTime .. string.format(message, ...))
end

Log("%d %s %s\n", 1, "a", tostring(true))

local numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9}

local map = function(collection, mapperFunc)
    assert(type(collection) == "table", "collection is not a table")
    assert(type(mapperFunc) == "function", "mapperFunc is not a function")

    local result = {}

    for index, value in ipairs(collection) do
        result[index] = mapperFunc(value)
    end

    return result
end

local filter = function(collection, predicateFunc)
    assert(type(collection) == "table", "collection is not a table")
    assert(type(predicateFunc) == "function", "predicateFunc is not a function")

    local result = {}

    for _, value in ipairs(collection) do
        if predicateFunc(value) then table.insert(result, value) end
    end

    return result
end

local reduce = function(collection, accumulatorFunc, identity)
    assert(type(collection) == "table", "collection is not a table")
    assert(type(accumulatorFunc) == "function",
           "accumulatorFunc is not a function")
    assert(type(identity) == type(collection[1]),
           "identity does not match type in collection")

    local result = identity

    for _, value in ipairs(collection) do
        result = accumulatorFunc(result, value)
    end

    return result
end

local numbersTimesTwo = map(numbers, function(num)
    return num * 2
end)

print(table.concat(numbersTimesTwo, " "))

local evenNumbers = filter(numbers, function(num)
    return num % 2 == 0
end)

print(table.concat(evenNumbers, " "))

local sumOfAllNumbers = reduce(numbers, function(acc, num)
    return acc + num
end, 0)

print("sum: " .. sumOfAllNumbers)
