-- 数组
arr = {1,2,3,4,5,"nihao"}
for key, var in pairs(arr) do
	print(key, var)
end

arr1 = {}
for var=1, 100 do
	table.insert(arr1,1,var)
end

for key, var in pairs(arr1) do
	print(key,var)
end

--数组的大小
print(table.maxn(arr1))