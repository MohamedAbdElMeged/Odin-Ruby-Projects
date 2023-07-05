list = [4, 3, 78, 2, 0, 2]

def bubble_sort(arr)
    arr_size = arr.size
    arr_size.times do
      for i in 0..arr_size - 1 do
        next unless (i + 1 < arr.size) && arr[i] > arr[i + 1]
  
        tmp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = tmp
      end
    end
    arr
  end
  

p bubble_sort(list)
