numbers = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
types = ['H', 'D', 'S', 'C']

card_array = []
while card_array.size < 5
  card = types.sample + numbers.sample
  card_array.push(card) if not card_array.include?(card)
end
p card_array


def to_hash(card_array)
  card_hash = {type: [], num: []}
  (card_array.size).times do |i|
    card_array[i].split(//)
    card_hash[:type].push(card_array[i][0])
    case card_array[i][1]
    when '1' then
      card_hash[:num].push(10)
    when 'J' then
      card_hash[:num].push(11)
    when 'Q' then
      card_hash[:num].push(12)
    when 'K' then
      card_hash[:num].push(13)
    when 'A' then
      card_hash[:num].push(14)
    else
      card_hash[:num].push(card_array[i][1].to_i)
    end
  end

  return card_hash

end







def isSameType(card_hash)
  loop_count = 0
  card_hash[:type]
  while loop_count < card_hash.size
    type = card_hash[:type][loop_count] if loop_count == 0

    if type != card_hash[:type][loop_count]
      return false
    end
    loop_count += 1
  end
  return true
end

def isSequence(array)
  (array.size - 1).times do |i|
    if array[:num][i + 1] - array[:num][i] != 1
      return false
    end
  end
  return true
end






card_hash = to_hash(card_array)
card_hash[:num] = card_hash[:num].sort{|a,b| a <=> b}



card_num = card_hash[:num].group_by(&:itself).map{ |key, value| [key, value.count] }.to_h

if isSameType(card_hash) && isSequence(card_hash)
  if (card_hash[:num].select {|n| n >= 10}).size == 5
    p "ロイヤルストレートフラッシュ"
  else
    p "ストレートフラッシュ"
  end

elsif card_num.has_value?(4)
  p "フォーカード"
elsif card_num.has_value?(3) && card_num.has_value?(2)
  p "フルハウス"
elsif isSameType(card_hash)
  p 'フラッシュ'
elsif isSequence(card_hash)
  p 'フラッシュ'
elsif card_num.has_value?(3)
  p 'スリーカード'
elsif card_num.has_value?(2) && card_num.size == 3
  p 'ツーペア'
elsif card_num.has_value?(2)
  p 'ワンペア'
end



