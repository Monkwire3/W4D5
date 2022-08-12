list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(arr)
    arr.each do |el1|
        is_smallest = true
        arr.each { |el2| is_smallest = false if el2 < el1 }
        return el1 if is_smallest
    end
end

# p my_min(list)

def my_min_efficient(arr)
    min_found = arr[0]
    arr.each { |el| min_found = el if el < min_found }
    return min_found
end

# p my_min_efficient(list)


list = [5, 3, -7]

def largest_contiguous_subsum(arr)
    sub_arrs = []
    arr.length.times do |j|
        (j+1).times { |i| sub_arrs << arr[i..j]}
    end
    return sub_arrs.max_by(&:sum).sum

end

p largest_contiguous_subsum(list) # => 8

