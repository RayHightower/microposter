controllers = Dir.new("app/controllers").entries
controllers.each do |controller|
  if controller =~ /_controller/
    cont = controller.camelize.gsub(".rb","")
    puts cont
      (eval("#{cont}.new.methods") -
       ApplicationController.methods -
       Object.methods - 
       ApplicationController.new.methods).sort.each {|met|
          puts "\t#{met}"
       }
  end

end
