local sum = function(lValue, rValue)
    return lValue + rValue
end

local sub = function(lValue, rValue)
    return lValue - rValue
end

local mul = function(lValue, rValue)
    return lValue * rValue
end

local div = function(lValue, rValue)
    if rValue ~= 0 then
        return lValue / rValue
    end

    return -1
end

local pow = function(lValue, rValue)
    return lValue ^ rValue
end

local operations = function(op, lValue, rValue)
    assert(type(op) == "string", "op is not a string")
    assert(type(lValue) == "number", "lValue is not a number")
    assert(type(rValue) == "number", "rValue is not a number")

    local switch = {
        ["+"] = sum,
        ["-"] = sub,
        ["*"] = mul,
        ["/"] = div,
        ["^"] = pow,
    }

    local func  = switch[op]
    if func then
        return func(lValue, rValue), nil
    else
        return nil, "invalid operations of type: " .. op
    end
end

print(operations("+", 10, 2))
print(operations("-", 10, 2))
print(operations("*", 10, 2))
print(operations("/", 10, 2))
print(operations("^", 10, 2))
print(operations("pow", 10, 2))

print("floor(2.345): " .. math.floor(2.345))
print("ceil(2.345): " .. math.ceil(2.345))
print("max(2, 2): " .. math.max(2, 3))
print("min(2, 2): " .. math.min(2, 3))
print("pow(8, 2): " .. 8 ^ 2)
print("sqrt(64): " .. math.sqrt(64))

math.randomseed(os.time())
print("math.random(): ".. math.random())
print("math.random(10): ".. math.random(10))
print("math.random(5, 100): ".. math.random(5, 100))
