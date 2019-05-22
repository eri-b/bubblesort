def bubble_sort(arr)
    arr.each_with_index do |x, index|
        break if index >= arr.length-1
        if x > arr[index.next]
            puts "larger"
        elsif x < arr[index.next]
            puts "not larger"
        else
            
        end
    end
end

bubble_sort([1, 2, 3])