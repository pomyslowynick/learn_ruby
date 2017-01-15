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