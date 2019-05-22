def bubble_sort(arr)
    len = arr.length
    len.times do
      arr.each_with_index do |x, index|
          break if index >= len - 1
          next_ind = index.next
          next_val = arr[next_ind]
          if x > next_val
              arr[next_ind]=x
              arr[index]=next_val
          end
      end
    end
    puts arr
end


#bubble_sort([1, 3, 2, 3, 1])


#bubble_sort([9, 5, 6, 3, 1, 345, 32, 4])

def bubble_sort_by(arr)
  len = arr.length
  arr.each_with_index do |x, index|
      break if index >= len - 1
      next_ind = index.next
      right = arr[next_ind]
      left = x
      diff = yield(left, right)
      if diff > 0
        arr[next_ind]=right
        arr[index]=left
      end
  end
  puts arr

end

bubble_sort_by([9, 5, 6, 3, 1, 345, 32, 4]) do |left, right|
  left - right
end
