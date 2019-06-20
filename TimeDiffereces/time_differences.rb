#phase 1

def my_min(array)                             # O(n^2)
  smallest = array[0]
  array.each_with_index do |ele1, idx1|
    array.each_with_index do |ele2, idx2|
      smallest = ele1 if smallest > ele1
    end
  end
  smallest
end


def my_min(array)                             # O(n)
  smallest = array[0]
  array.each do |ele|
    smallest = ele if smallest > ele
  end
  smallest
end


# def largest_contiguous_subsum(array) # O(n)
#   subs = sub_arrays(array)
#   sum = array[0]
#   subs.each do |arr|
#     sum = arr.sum if arr.sum > sum
#   end
#   sum
# end 


# def sub_arrays(array)   # O(n^2)
#   subs = []
#   (0...array.length).each do |i|
#     (i...array.length).each do |j|
#       subs << array[i..j]
#     end
#   end
#   subs
# end

# O(n^k)
require "byebug"

def largest_contiguous_subsum(array) # O(n)
  i = 0
  largest = array[0]
  current = 0
  while i < (array.length)
    current += array[i]
    largest = current if largest < current
    current = 0 if current < 0
    i += 1
    # debugger
  end
  return largest
end


list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)