class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    sum = 0
    self.each_with_index do |ele,i|
      sum += hash_math(ele,i)
    end
    return sum

  end
  private
  def hash_math(ele,i)
    if i.even?
      return ele * i 
    else
      return ele + 1
    end
  end
end

class String
  def hash
    sum = 0
    alpha = ("a".."z").to_a
    self.each_char.with_index do |char,i|
      char = char.downcase
      if i.even? 
        sum += alpha.index(char) + i
      else
        sum += alpha.index(char) % i
      end
    end
    return sum
  end

end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    
  end
end
