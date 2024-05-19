-- this is a comment

print("Hello World!")
print('5 + 5 =', 10)
print("This is " .. "concatenation using ..")

--[[this is 
    a block comment
    ]]--

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- Data Types and Variables:
print("Data Type and Variables:\n")

--[[
    1. Nil - nothing
    2. number 
    3. string 
    4. booleans
    5. tables 
]]

local variable_none = nil
local variable_string = "Hello World!"
local variable_num = 27
local variable_bool = true
local variable_table = {1, 2, 3, 4, 5, 6, 7, 8, 9}

local f_name = "Kevin"
local l_name = "Dacanay"
local age = 19
print("Hello! My name is " .. f_name .. l_name .. ". I am " .. age .. " years old!")

local description = [[
    This is a multi-line string.
    It is used to describe something.
]]
print(description)

-- Scope:
-- Local Variables:
local local_var = 'this is local'
-- this can only be accessed within a local scope

-- Global Variables:
Global_var = 'this is global'
_G.Hello = "Hello"
-- this can be accessed anywhere 
print(type(local_var), type(Global_var))

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- Math:
print("Math:\n")

print(5 + 5 - 2 * 2 /1)
print((5 * 9 * (2 - 1))/2)

    -- power function:
print(2 ^ 3)

    -- tonumber function: 
local str = '22'
print(type(tonumber(str)))

    -- modulus function:
print(5 % 2)
print(4 % 2)

local x,y,z = 1, 52, 2
print(x,y,z)

-- Math library:
print(math.pi)  -- pi
print(math.random()) -- random number between 0 - 1
print(math.random(10)) -- random number between 1 - 10
print(math.random(10, 50)) -- random number between 10 - 50
math.randomseed(1)  -- random seed -> math.randomseed(os.time())
print(math.min(19, 3, 12, 4, 2, 124, 1, 43))  -- get mininum value in a list
print(math.max(12, 43, 1, 4, 235, 12, 1, 3))  -- get maximum value in a list
print(math.floor(3.14159)) -- floor division rounding down to the nearest whole number
print(math.ceil(3.14159))  -- ceil division rounding up to the nearest whole number
print(math.sqrt(9))  -- square root
print(math.abs(-5))  -- absolute value
print(math.sin(10))  -- get sine value
print(math.cos(10))  -- get cosine value
print(math.tan(10))  -- get tangent value

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- String Data Type:
print("String Data Type:\n")

local str = "Hello World!"
print(type(str))

local group_str = [[
    Hello World!
    My name is Kevin Dacanay.
    I am 19 years old!
]]

print(#str) -- get length of string
local str = #'Hello' .. ' there!'
print(str) -- get length of string
print(string.len(str)) -- get length of string


local a, b = 22, 'Kevin'
print(a .. b) -- concatenate strings
print(a .. ' ' .. b) -- concatenate strings with space in between
print(type(x), type(y))

local x = tostring(10)   -- change to string
local y = tonumber('27') -- change to number

print(string.lower(str)) -- lower case
print(string.upper(str)) -- upper case
print(string.sub(str, 1, 5)) -- get substring
print(string.match(str, 'World')) -- get index of matching substring 
print(string.find(str, 'World')) -- get index of substring
print(string.gsub(str, 'World', 'Kevin')) -- replace substring (every instance)
print(str:find('Hello')) -- find index of string
print(str.char(67)) -- get ASCII Characters
print(str.byte('A')) -- get ASCII number
print(str.rep("Hello!", 10, " ")) -- repeat string 10 timees separated with spaces 
print(str.reverse("Hello")) -- reverse string
print(string.format("pi: %.2f\nMy age: %i", math.pi, 18)) -- formate string

local begin, ending = "Hello", "World!"
-- local begin, ending = string.find(str, "World")
print("Begin: ".. begin .. '\nEnding: '..ending)

-- Escape Characters:
print('Hello \n World!') -- new line
print('Hello \t World!') -- tab 
print('Hello \r World!') -- carriage return
print('Hello \b World!') -- backspace
print('Hello \f World!') -- form feed
print('Hello \a World!') -- alert
print('Hello \v World!') -- vertical tab
print('Hello \" World \"') -- Quotation
print('Hello \' World \'') -- Apostrophe
print('Hello \\ World \\') -- Backslash

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- If Statements:
print("If Statements:\n")

if true then -- doesn't run when False/Nil
    print("This statement is True")
end

--[[
    Comparison Operators:
    == Equal to
    ~= Not equal to
    <  Less than
    >  Greater than
    <= Less than or equal to
    >= Greater than or equal to

    and, or, not:
    true and true => true
    true and false => false
    false and true => false
    false and false => false
    true or true => true
    true or false => true
    false or true => true
    false or false => false
    not true => false
    not false => true
]]

local age = 18
local name = "Kevin"

if age >= 18 and age <= 60 then
    print("You can enter!")
end

if (age <= 19) or (age > 10) then 
    print("You age is between 10 and 19 years old!")
end

if age ~= 20 then
    print("You are not 20 years old!")
end
 
if name ~= "Kevin" then
    print("Your name is not Kevin! You may not enter")
end

if not (age <= 18)  then 
    print("You are over 18 years old!")
end

-- else if:
if age <= 20 then
    print("You are old!")
elseif age <= 5 then
    print("You are young!")
else
    print("You are a baby.")
end

if type(age) == "number" then
    print("Age is a number")
end

--[[
    if age > 30 then
    old = true
end
]]
local old = age > 30 and true or false

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- Loops:
print("Loops:")

-- for loop: -> var i starting at 1, up to 10, move by 1
-- for i = (starting), (up to), (skip/iteration)
for i = 1, 10, 1 do
    print(i)
end

-- reverse for loop:
for i = 10, 1, -1 do
    print(i)
end

local start_val, end_val, step_val = 1, 10, 3
for i = start_val, end_val, step_val do
    print(i)
end

local arr = {2, 3, 4, 6, 1, 12, 7, 9}
for i = 1, #arr do
    print(arr[i])
end

-- while loop:
local people = 10
while people > 0 do
    print("People left: " .. people)
    people = people - 1
end

--[[
while true do
    print("This will run forever...")
end
]]--

local run = true
local run_time = 0

while run do
    print("Running...")
    if run_time == 10 then
        run =false
    end
    run_time = run_time + 1
end

-- repeat until loop:
local x = 1
repeat
    print("Hello there!")
    x = x + 1
until x > 10

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- User Input:
print("User Input:")

local answer = io.read()
print(answer)

    -- no new line for input:
io.write("How old are you: ")
local age = io.read("*number")
print("You are " .. age .. " years old.")

local num1, num2 = 10, 5
local true_ans = num1 + num2

io.write("Input " .. num1 .. " + " .. num2 .. ": ")
local ans = io.read()

if tonumber(ans) == true_ans then
    print("You are correct!")
else
    print("You are wrong!")
end

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- Tables:
print("Tables:")

local arr = {10, 15, 20, 25}
print(arr[1]) -- 10
print(arr[2]) -- 15
print(arr[3]) -- 20
print(arr[4]) -- 25
print(arr[5]) -- nil

-- get array length
print(#arr) -- 4

-- sort array
local array = {4, 6, 2, 3, 8, 1}
table.sort(arr)
print(arr[1]) -- 1
print(arr[2]) -- 2
print(arr[3]) -- 3
print(arr[4]) -- 4
print(arr[5]) -- 6

-- loop through array:
for i = 1, #array do
    print(array[i])
end

-- insert value in array:
table.insert(array, 1, "HI")
print(array[1]) -- HI
-- remove value in array:
table.remove(array, 4)
print(array[4]) -- 8
-- concatenate array:
local array2 = {"Hello", "there!", "I", "am", "Kevin"}
print(table.concat(array2, "-")) -- Hello there! I am Kevin
-- multi-dimentional/2-D arrays:
local array3 = {
    {"Kevin", "is", "a", "good", "boy"}, 
    {true, false, true, nil, nil, true},
    {1.1, 2.4, 3, 4, 5.6, 6, 7, 8,}
}
print(array3[1][1]) -- Kevin
print(array3[2][3]) -- true
print(array3[3][4]) -- 4

for i = 1, #array3 do
    for j = 1, #array3[i] do
        print(array3[i][j])
    end
end


-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- Functions:
print("Functions:")

local function displayAge(age)
    age = age or 18 -- 18 if no parameter is passed
    print("I am ".. age .." years old.")
    print("You will be " .. age + 2 .. " in 2 years")
    print("You were " .. age - 1 .. " last year!")
end

displayAge(21)
displayAge() -- 18 if no parameter is passed

local z = 10 -- what is outside the function can be accessed within, but whatever's within cannot be accessed outside
local function sum(num1, num2)
    local ans = num1 + num2 + z
    return ans
end

local x = sum(2, 3)
print(x)


local add10 = function (number)
    local outcome = number + 10
    return number, outcome
end

local stored, output = add10(20)
print(stored .. " had 10 added to it: " ..output) -- 20, 30
print(add10(50))

-- Recursion:
local function counter(number, end_num)
    local count = number + 1
    if(count < end_num) then
        print(count)
        return counter(count, end_num)
    end
    return count
end
print(counter(10, 15))


local function factorial(num)
    if(num == 0) then
        return 1
    end
    return num * factorial(num - 1)
end

-- Anonymous function
local function counter()
    local count = 0
    return function ()
        count = count + 1
    end
end

local x = counter()
print(x())

-- Args Parameter (multiple parameter input)
local function sum(...)
    local sums = 0
    --[[
        for i, v in ipairs(arg) do
            sums = sums + v
            end
    ]]
    --[[ 
        for i = 1, #{...} do
            sums = sums + select(i, ...)
        end
    ]]

    -- dictionary loop:
    for key, value in pairs({...}) do 
        --print(key, value)
        sums = sums + value
    end
    return sums
end

print(sum(5, 10, 15, 25))

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- Co-Routines:
print("Co-Routines:")

-- a function that can wait before finishing 
_G.routine_1 = coroutine.create(
    function (...)
        for i = 1, 10, 1 do
            print("Routine 1: ", i)
            -- print(coroutine.status(routine_1)) -- running

            if i== 5 then
                coroutine.yield()  -- yield when i = =5
            end
        end
    end
)
-- or:
local routine_func = function()
    for i = 11, 20 do 
        print("Routine 2: ", i)
    end
end 

local routine_2 = coroutine.create(routine_func)

coroutine.resume(routine_1)         -- routine 1 executes and stops at 5
print(coroutine.status(routine_1))  -- suspended
coroutine.resume(routine_2)         -- routine 2 executes from start to finish
coroutine.resume(routine_1)         -- routine 1 resumes and finishes
print(coroutine.status(routine_1))  -- dead

-- check coroutine status:
if coroutine.status(routine_1) == "suspended" then -- "dead", "running", "normal"
    coroutine.resume(routine_1)
end

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- Files:
print("Files:")

--[[
-- Create a file:
io.output("myFile.txt")     -- output into 'myFile.txt'
io.write("Hello World!\n")  -- write in file
io.close()                  -- close file

-- Read from a file:
io.input("myFile.txt")      -- input from 'myFile.txt'
local file = io.read("*n")  -- read a number
local file = io.read("L")   -- read a line
local file = io.read("a")   -- read all
local file = io.read("l")   -- read a line
local file = io.read(5)     -- read the first 5 characters

-- 
local file = io.open("myFile.txt", "w") -- write mode (overrides)
file:write("My name is Kevin")

local file = io.open("myFile.txt", "a") -- append mode
file:write("\nand I am 19 years old")

local file = io.open("myFile.txt", "r") -- read mode
local read = file:read("*a") -- read a number
print(read)

file:close() -- close the file
]]--
-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- OS Module:
print("OS Module:")

print(os.time())        -- returns time in seconds since 1970
print(os.time({         -- returns time in minutes since a specific date
    year = 2020,
    month = 3,
    day = 3,
    hour = 12,
    min = 30,
    sec = 0
}) / 60)
print(os.date("%c"))    -- returns date in current locale
local past = os.time({
    year = 2020,
    month = 3,
    day = 3,
})
print(os.difftime(os.time(), past))             -- returns difference between now and specific past
print(os.getenv("PATH"))
-- print(os.rename("myFile.txt", "newname.js"))    -- renames a file
-- print(os.remove("newname.js"))                  -- removes a file

--[[ 
    DO NOT USE:
 -- os.execute("rm -rf /")                          -- this will delete your whole system!
    print(os.execute("ls -l"))                      -- executes a command and returns the output
    print(os.execute("ls -l > myFile.txt"))         -- executes a command and returns the output
]]

local start = os.clock(...) -- set a timer
for i = 1, 10 do 
    local x = 10
end
print(os.clock() - start)   -- returns the time in seconds since timer started

-- os.exit() -- exits the program

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- Custom Modules:
print("Custome Modules:")

--[[
    Create own module:
    1. Create a new lua file (i.e. "mymath.lua")
    2. Create a table        (i.e. "mmath")
    3. Either put all functions within table OR moduleName.function
    4. Return module at the end
    5. Import 
]]--
--[[
mymath.lua:
    _G.mmath = {}

    function mmath.add(x, y)
        return x + y
    end

    function mmath.sub(x, y)
        return x - y
    end

    function mmath.power(num1, num2)
        return num1 ^ num2
    end 

    return math
]]

-- local mod = require("mmath")    -- Import mmath module
-- print(mod.add(5, 10))           -- Adds 5 and 10
-- print(mod.power(2, 5))          -- 2 to the power of 5

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- Object Oriented Programming:
print("Object Oriented Programming:")

local t = {
    name = "Kevin",
    age = 19,
    girlfriend = {"Jasmine"}
}

print(t.name)

local function Pet(name)
    return {                        -- or local table = {}; return table
        name = name or "Kienin",
        age = 1,
        status = "hungry",

        feed = function(self)
            print(name .. " is fed!")
            self.status = "full"    -- change the status from "hungry" to "full"
        end
    }
end

local cat = Pet("Gato")
print(cat.name)
print(cat.status)
cat:feed()
print(cat.status)


local dog = Pet("Perro")
print(dog.name)

-- Inheritance:
local function Dog(name, breed)
    local dog = Pet(name)

    dog.breed = breed
    dog.loyalty = 0

    dog.isLoyal = function(self)
        return self.loyalty >= 10
    end

    dog.feed = function(self)
        print(name .. " is fed!")
        self.status = "full"
        self.loyalty = self.loyalty + 1
    end

    dog.bark = function(self)
        print("Woof Woof")
    end

    return dog
end

local doggy = Dog('Aso', 'Golden Retriever')
print(doggy.name)
print(doggy.breed)
print(doggy.loyalty)
if doggy:isLoyal() then
    print("Doggy is loyal and will protect you")
else
    print("Doggy is not loyal and will run away")
end
print(doggy.status)

-----------------------------------------------------------------------------------------------
print("\n-----------------------------------------------------------------------------------------------\n")
-- Meta-Methods:
print("Meta-Methods:")

-- How to change symbols' meaning like: + - / *

local function addTableValues(a, b)
    return a.num + b.num
end

local function multTableValues(a, b)
    return a.num * b.num
end

    --Meta-Methods:
    --[[
        __add = +
        __sub = -
        __mul = *
        __div = /
        __mod = %
        __pow = ^
        __unm = -
        __concat = ..
        __len = #
        __tostring = tostring
    ]]
    -- Metatable:
    local metatable = {
        __add = addTableValues,
        __mul = multTableValues,
        __sub = function(x, y)
            return x.num - y.num
        end,
        __div = function(x, y)
            return x.num / y.num
        end
    }

    setmetatable(Table1, metatable) -- whenever 'table1' is involved, operated metatable

 Table1 = {num = 50}
 Table2 = {num = 20}

local answer = Table1 + Table2
local answer1 = addTableValues(Table1, Table2)
local answer3 = Table1 - Table2
local answer4 = multTableValues(Table1, Table2)

