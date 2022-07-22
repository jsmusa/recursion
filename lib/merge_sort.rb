def merge_array(arr_one, arr_two)
  new_array = []

  until arr_two.empty? || arr_one.empty?
    if arr_one[0] < arr_two[0]
      new_array.push(arr_one.shift(1))
    else
      new_array.push(arr_two.shift(1))
    end
  end

  new_array.push(arr_two + arr_one).flatten!
end

def merge_sort(array)
  if array.length < 2
    array
  else
    left_array = array.slice!(0, array.length/2)
    left_array = merge_sort(left_array)
    array = merge_sort(array)
    merge_array(left_array, array)
  end
end

print merge_sort([3, 2, 1, 6, 7, 5, 8, 22, 4, 9, 13]), "\n"