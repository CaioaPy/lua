function conc (va)
      f = print("conc", va)
      return f
end
x = conc("ew") --output = function but x stays nil
--simple for loop struture
for i = 1,100
      do
      print(i)
      end
--[[
for i = 1,100
      do
      print(i)
      end
]]
tablew = {}
tablew["a"] = 10
x = tablew["a"]
y = tablew.a --another notation
print(x)
print(y)

a = {}
for i=1,10 do
    a[i] = io.read()
end
print(a[10])

--sum test
a = {}
for i=1,10 do
    a[i] = io.read("*n")
end
function add (a)
      local sum = 0
      for i,v in ipairs(a) do
        sum = sum + v
      end
      return sum
end
print(add(a))
