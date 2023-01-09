-- https://www.lua.org/pil/9.html

local cOne = coroutine.create(function ()
    for i = 1, 10 do
        print(i)
        if i == 5 then
            coroutine.yield()
        end
    end
end)

local cTwo = coroutine.create(function ()
    for i = 101, 110 do
        print(i)
    end
end)

print(coroutine.status(cOne))
print(coroutine.status(cTwo))

coroutine.resume(cOne)

print(coroutine.status(cOne))
print(coroutine.status(cTwo))

coroutine.resume(cTwo)

print(coroutine.status(cOne))
print(coroutine.status(cTwo))

coroutine.resume(cOne)

print(coroutine.status(cOne))
print(coroutine.status(cTwo))
