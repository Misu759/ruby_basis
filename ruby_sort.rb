number_array = [3, 5, 9, 7, 1]

def quick_sort(array)
  return array if array.size < 1

  pivot = array.shift

  left = []
  right = []

  array.each do |item|
    if item < pivot
      left.push(item)
    else
      right.push(item)
    end
  end

  quick_sort(left) + [pivot] + quick_sort(right)
end

p quick_sort(number_array)