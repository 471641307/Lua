print("hello Lua")

--全局变量
num = 100
print(num)

--局部变量
local localNum = 1000
print(localNum)

--不带参数的方法
function sayHello()
	print("hello everybody")
end

sayHello()

--带参数的方法
function max(a,b)
	if a>b then
	   return a
	else
	   return b
	end
end

print(max(1,3))

--循环语句
for var=1, 191 do
	print(var)
end