def bubble_sort(arr)
  curr_idx = 0
  end_idx = arr.length - 1

  while end_idx > curr_idx do

    while curr_idx < end_idx do

      if arr[curr_idx] > arr[curr_idx + 1]

        temp = arr[curr_idx]
        arr[curr_idx] = arr[curr_idx + 1]
        arr[curr_idx + 1] = temp

      end

      curr_idx += 1

    end

    end_idx -= 1
    curr_idx = 0

  end

  return arr
end

arr = [ 4, 3, 78, 2, 0, 2 ]
puts bubble_sort(arr)


def another_bubble_sort(arr)

  unsorted = true

  while unsorted do

    i = 0
    unsorted = false

    while i < (arr.length - 1) do

      if arr[i] > arr[i + 1]
        
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        unsorted = true
      
      end

      i += 1

    end

  end

  print arr

end

another_bubble_sort(arr)