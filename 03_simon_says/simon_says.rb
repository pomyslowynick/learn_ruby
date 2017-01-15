def echo word
    return word.to_s
end
def shout word
    return word.to_s.upcase
end
def repeat(word, *p) 
    if p.empty?
      return word.to_s + " " + word.to_s
    else
        ret = []
        i = p.join.to_i
        while i > 0
          ret.push(word.to_s)
          i -= 1
        end
        return ret.join(" ")
    end
end

def start_of_word(word, let)
   us = word.split("")
   if let > 1
      return us[0..let-1].join 
   else
      return us[0]
   end
end

def first_word word
   spli = word.split
   return spli[0]
end

def titleize word
    lilwordz = ["and", "over", "the", "a"]
    res = ""
    spli = word.split
    i = 0
    while i < spli.length
      if lilwordz.include? spli[i] and i != 0
        res += spli[i].to_s + " "
        i += 1
      else
        res += spli[i].to_s.capitalize + " "
        i += 1
      end
    end
    return res.split(" ").join(" ")
    
end
print titleize("the Bridge over the River Kwai")