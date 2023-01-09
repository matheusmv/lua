-- https://www.lua.org/pil/16.html
-- https://www.tutorialspoint.com/lua/lua_metatables.htm

local Animal = {height = 0, weight = 0, name = "", sound = ""}

function Animal:new(height, weight, name, sound)
    setmetatable({}, Animal)

    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound

    return self
end

function Animal:toString()
    local template = "%s weights %.1f lbs, is %.1f tall and says %s."
    local animalString = string.format(template, self.name, self.weight,
                                       self.height, self.sound)
    return animalString
end

local spot = Animal:new(10, 15, "Spot", "Woof")
print(spot.height)
print(spot:toString())

local Cat = Animal:new()

function Cat:new(height, weight, name, sound, favFood)
    setmetatable({}, Cat)

    self.height = height
    self.weight = weight
    self.name = name
    self.sound = sound
    self.favFood = favFood

    return self
end

function Cat:toString()
    local template =
        "%s weights %.1f lbs, is %.1f tall and says %s and loves %s."
    local animalString = string.format(template, self.name, self.weight,
                                       self.height, self.sound, self.favFood)
    return animalString
end

local fluffy = Cat:new(10, 15, "Fluffy", "Meow", "Tune")
print(fluffy.name)
print(fluffy:toString())
