person1 = Hash.new
person1[:first] = 'George'
person1[:last] = 'Washington'

person2 = Hash.new
person2[:first] = 'Louise'
person2[:last] = 'Jefferson'

person3 = Hash.new
person3[:first] = 'John'
person3[:last] = 'Adams'

params = Hash.new
params[:father] = person1
params[:mother] = person2
params[:child] = person3

