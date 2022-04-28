money = 6498

if money >= 10000
  count_10000 = money / 10000
  money = money - 10000 * count_10000
end
if money >= 5000
  count_5000 = money / 5000
  money = money - 5000 * count_5000
end
if money >= 1000
  count_1000 = money / 1000
  money = money - 1000 * count_1000
end
if money >= 500
  count_500 = money / 500
  money = money - 500 * count_500
end
if money >= 100
  count_100 = money / 100
  money = money - 100 * count_100
end
if money >= 50
  count_50 = money / 50
  money = money - 50 * count_50
end
if money >= 10
  count_10 = money / 10
  money = money - 10 * count_10
end
if money >= 5
  count_5 = money / 5
  money = money - 5 * count_5
end
if money >= 1
  count_1 = money / 1
  money = money - 1 * count_1
end

hash = {1=> count_1, 5=> count_5, 10=> count_10, 50=> count_50, 100=> count_100, 500=> count_500, 1000=> count_1000, 5000=> count_5000, 10000=> count_10000}

p hash