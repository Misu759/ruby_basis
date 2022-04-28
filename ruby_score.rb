array_data = [["らんてくん", 98], ["カンノ", 23], ["ファラオ", 57], ["だいそん", 84], ["ひさじゅ", 100]]

length = array_data.length
(1..length).each do |i|
  (1..(length - i)).each do |j|
    if array_data[j - 1][1]  < array_data[j][1]
      tmp = array_data[j - 1]
      array_data[j - 1] = array_data[j]
      array_data[j] = tmp
    end
  end
end


(array_data.size).times do |i|
  puts (i + 1).to_s + '位: ' + array_data[i][0] + ' ' + array_data[i][1].to_s + '点'
end