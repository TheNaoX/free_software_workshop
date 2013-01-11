class MyClass
  def self.do_something(string)
    begin
      string.split(",")
    rescue Exception => e
      puts "Error: #{e.to_s}, the parameter was not a string..."
    end
  end
end

puts MyClass.do_something(57).inspect
puts MyClass.do_something("a,b,c,d,e").inspect
