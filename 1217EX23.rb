=begin
題目:有一個陣列裡面所有元素都出現三次
     除了x只出現一次，以及y只出現兩次
     要計算x*x*y
想法:用.count計算每一個元素出現幾次
     出現2次以下的就把他丟到新的陣列
     最後
=end
def missing_values(arr)
    index = 0
    a = 0
    b = 0
    until a*a*b > 0
      if arr.count(arr[index]) == 1
        a = arr[index]
      elsif arr.count(arr[index]) == 2
        b = arr[index]
      end
      index += 1
    end
  return a*a*b
end
missing_values([1, 1, 1, 2, 2, 3])
