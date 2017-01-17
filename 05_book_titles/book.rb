class Book
  attr_accessor :title
  def title=(word)
      arrc = ["and", "in", "the", "of","a","an"]
      arr = word.split
      i = 1
      sum = []
      sum.push(arr[0].capitalize)
      while arr.length > i
        if arrc.include? arr[i]
            sum.push(arr[i])
            i+=1
        else
        sum.push(arr[i].capitalize)
        i+=1
        end
      end
    @title = sum.join(" ")
  end
end
a = Book.new
a.title="heya and yeya"
print a.title