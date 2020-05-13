# def bubble_sort(my_array)
#   size = my_array.length
#   i = 0
#   while i < size - 1
#     j = 0
#     while j < size - i - 1
#       my_array[j], my_array[j + 1] = my_array[j + 1], my_array[j] if my_array[j].to_f > my_array[j + 1].to_f
#       j += 1
#     end
#     i += 1
#   end
#   my_array
# end

# unsorted_array = [4, 2, 5, 2.7, 1, 6, 0]

# p bubble_sort(unsorted_array)

def bubble_sort_by( my_array)
  size = my_array.length
  i = 0
  while i < size - 1
    j = 0
    while j < size - i - 1
      # my_array[j], my_array[j + 1] = my_array[j + 1], my_array[j] if (call block that compare arr1 arr2) positif/true
      my_array[j], my_array[j + 1] = my_array[j + 1], my_array[j] if yield (my_array[j], my_array[j + 1])
      j += 1
    end
    i += 1
  end
  my_array
end

bubble_sort_by do |left, right|
  left.length - right.length
end