def add (num1, num2)
    return num1 + num2
end
def subtract(num1, num2)
    return num1 - num2
end
def sum arr 
    if arr == []
        return 0
    elsif arr.length == 2
      return arr[1] + arr[0]
    elsif arr.length > 2
      arr.inject(0){|sum,x| sum + x }
    else
      return arr[0]
    end
end
def multiply arr
  return arr.reduce(:*)
end
def power(num1, num2)
    return num1**num2
    
end
def factorial num
  var = num
  sum = 0
  if num == 1
      sum = 1
  else
    while var > 1
      if sum == 0
        sum += var * (var - 1)
        var -= 2
      else
          var -= 1
          sum += sum*var
      end
    end
  end
  return sum
end
print factorial(3)