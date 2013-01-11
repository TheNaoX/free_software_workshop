class Book

  @@books = []

  attr_accessor :isbn, :price, :tax

  def to_s
    "This is an instance of a parent class, you can't execute anything here"
  end

end

class BookInStock < Book

  def initialize(attr = {})
    @isbn = attr[:isbn].nil? ? nil : attr[:isbn]
    @price = attr[:price].nil? ? nil : attr[:price]
    @tax = attr[:tax].nil? ? nil : attr[:tax]
    calculate_tax
    @@books << self
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}, tax: #{@tax}"
  end

  def calculate_tax
    @tax = (0.16 * @price)
  end

  def do_something
    yield
  end

  def self.show_me_your_details
    @@books.each do |book|
      book.calculate_tax
    end
  end
end

puts Book.new
puts BookInStock.new({ isbn: "isbn1", price: 50 })
#BookInStock.new({ isbn: "isbn2", price: 100 })
#BookInStock.new({ isbn: "isbn3", price: 500 })

#puts BookInStock.show_me_your_details

#BookInStock.new.do_something { 15.times { puts "I'm on the yield, #{self}" } }
