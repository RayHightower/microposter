class String
  def shuffle
    temp = self.split('')
    temp.shuffle.join # shuffle as an array, then joined
  end

#  def shuffle!
#    self = self.split('')
    
#  end
end
