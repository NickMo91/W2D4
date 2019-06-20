
def two_sum?(arr, target_sum)
  i= 0 
  while i < arr.length - 1
    j = i + 1
    while j < arr.length
      return true if arr[i] + arr[j] == target_sum
      j += 1
    end
    i += 1
  end
  false
end

def hash_map(arr, target_sum)
  hash = Hash.new {}
  arr.each_with_index do |ele, idx|
    hash[idx] = ele
  end
  hash
end

p hash_map([1,2,3,4,1,12], 4)