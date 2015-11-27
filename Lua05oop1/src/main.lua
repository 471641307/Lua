-- 复制表的方式 面向对象
--克隆
function clone(tab)
	local ins = {}
	for key, var in pairs(tab) do
		ins[key] = var
	end
	return ins
end

-- 复制
function copy(out,ins)
	for key, var in pairs(ins) do
		out[key] = var
	end
end


People = {}
function People.sayHi()
	print("people say hi")
end

People.sayHello = function(self)
	print("people say hello:"..self.name)
end

People.new = function (name)
	local self = clone(People)
	self.name = name
	return self
end

local p = clone(People)
p.sayHi()

local p = People.new("zhangsan")
-- 调用1
p.sayHello(p)

-- 调用2
p:sayHello()


-- 继承
Man = {}
Man.new = function (name)
	local self = People.new(name)
	copy(self,Man)
	return self
end

--重写
Man.sayHi = function()
  print("man say hi")
end


Man.say = function()
  print("man say")
end

local m = Man.new("li si")
m:sayHi()
m.say()
