def stock_picker(array)
    minimum_pair = [0, 1]
    index = 0
    array.each_with_index do |value1, index1|
        array.each_with_index do |value2, index2|
            if (index2 > index1) and (value2 - value1) > (array[minimum_pair[1]] - array[minimum_pair[0]])
                minimum_pair[0] = index1
                minimum_pair[1] = index2
            end
        end
    end
    minimum_pair
end

print stock_picker([17,3,6,9,15,8,6,1,10])
        
