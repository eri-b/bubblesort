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

bubble_sort([1, 3, 2, 3, 1])

def bubble_sort_by(arr)
  len = arr.length
  len.times do
    arr.each_with_index do |x, index|
        break if index >= len - 1
        next_ind = index.next
        right = arr[next_ind]
        left = x
        diff = yield(left, right)
        if diff > 0
          arr[next_ind] = left
          arr[index] = right
        end
    end
  end
  puts arr
end

bubble_sort_by(["hi","hello","hey"]) do |left, right|
  left.length - right.length
  # return left.length - right.length
end