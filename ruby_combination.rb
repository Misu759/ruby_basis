n = 5

array = [*1..n]
array2 = [*1..n]

for i in array do
  for j in array2 do
    p [i, j] if i < j
  end
end
