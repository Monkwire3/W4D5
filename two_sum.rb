def bad_two_sum?(arr, target)
    arr.each_with_index do |el_1, i_1|
        arr.each_with_index do |el_2, i_2|
            return true if i_2 > i_1 && el_1 + el_2 == target
        end
    end

    return false
end

#arr = [0, 1, 5, 7]
#p bad_two_sum?(arr, 9)
#p bad_two_sum?(arr, 6)

def bin_search(arr, target)
    mid = arr.length / 2
    return true if arr[mid] == target
    return false if arr.length == 0

    #return 

end
arr = [0, 2, 3, 4, 7, 12, 23, 24, 35, 37, 46, 234, 1235]
p get_relevant_sub_arr(arr, 50)


def okay_two_sum?(arr, target)
    arr.sort!
    arr.each {|el| return true if bin_search(arr, (target - el))}
    return false
end