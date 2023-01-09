local testTable = {}

for i = 1, 10 do
    testTable[i] = i
end

local function nonNil(...)
    for val in pairs({...}) do
        if val == nil then
            return false
        end
    end

    return true
end

local testMetaTable = {
    __add = function (tOne, tTwo)
        local sumTable = {}

        for i = 1, #tOne do
            if nonNil(tOne[i], tTwo[i]) then
                sumTable[i] = tOne[i] + tTwo[i]
            else
                sumTable[i] = 0
            end
        end

        return sumTable
    end,
    __eq = function (tOne, tTwo)
        if #tOne ~= #tTwo then
            return false
        end

        for i = 1, #tOne do
            if tOne[i] ~= tTwo[i] then
                return false
            end
        end

        return true
    end
}

-- https://www.lua.org/pil/13.html

setmetatable(testTable, testMetaTable)

local testTableTwo = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

print(testTable == testTableTwo)

local addResult = testTable + testTableTwo
for _, value in pairs(addResult) do
    print(value)
end
