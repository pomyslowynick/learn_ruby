def translate word
    arrvow = ["a","e","u","y","i","o"]
    arrcon = ["w","r","t","p","s","d","f","g","h","j","k","l","z","x","c","v","b","n","m"]
    splina = word.split(" ")
    sum = []
    finsum = []
    i = 0
    while splina.length > i
      spli = splina[i].split("")
    if splina[i].include? "qu"
      if arrcon.include? splina[i][0]
        spli.push(spli[0])
        spli.shift
      end
      spli.delete("q")
      spli.delete("u")
      spli.push("qu")
      
    end
    if arrvow.include? spli[0]
      sum = []
      sum += spli.push("a", "y")
      finsum.push(sum.join)
      
    else
      while arrcon.include? spli[0]
        spli.push(spli[0])
        spli.shift
      end
      sum = []
      sum += spli.push("a","y")
      finsum.push(sum.join)

   
    end
    i += 1
    end
    return finsum.join(" ")
    
end
print translate("the quick brown fox")