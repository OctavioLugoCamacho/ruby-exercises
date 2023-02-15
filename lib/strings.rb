class Strings
  def initialize(strings, count)
    @strings = strings
    @count = count
  end

  def day5a
    @strings.each do |s|
      vowels = vowel(s)
      result = repeat(s)
      if vowels >= 3 && result[0] >= 1 && result[1] == 0
        @count += 1
      end
    end
    return @count
  end

  def day5b
    @strings.each do |s|
      pairs = pair(s)
      between_result = between(s)
      if pairs > 0 && between_result > 0
        @count += 1
      end
    end
    return @count
  end

  def pair(s)
    pairs = 0
    string = s.split('')
    for i in 0..string.size() - 4
      for j in i + 2..string.size() - 2
        if string[i] == string[j] && string[i + 1] == string[j + 1]
          pairs += 1
        end
      end
    end
    return pairs
  end

  def between(s)
    betweens = 0
    string = s.split('')
    for i in 0..string.size() - 3
      if string[i] == string[i + 2]
        betweens += 1
      end
    end
    return betweens
  end

  def vowel(s)
    count_vowels = 0
    vowels = s.split('')
    vowels.each do |v|
      if v == "a" || v == "e" || v == "i" || v == "o" || v == "u"
        count_vowels += 1
      end
    end
    return count_vowels
  end

  def repeat(s)
    result = []
    twice = 0
    bad_twice = 0
    string = s.split('')
    for i in 0..string.size() - 2
     if string[i] == string[i + 1]
      twice += 1
     end
     if string[i] == "a" && string[i + 1] == "b"
      bad_twice +=1
     end
     if string[i] == "c" && string[i + 1] == "d"
      bad_twice +=1
     end
     if string[i] == "p" && string[i + 1] == "q"
      bad_twice +=1
     end
     if string[i] == "x" && string[i + 1] == "y"
      bad_twice +=1
     end
    end
    result << twice
    result << bad_twice
    return result
  end
end

if __FILE__ == $0
  file = []
  File.foreach("strings.txt") { |line| file << line }
  string1 = Strings.new(file, 0)
  string2 = Strings.new(file, 0)
  puts string1.day5a
  puts string2.day5b
end
