class User # < ORM::Database
  attr_accessor :name, :email, :age

  def initialize(name, email, age)
    @name = name
    @email = email
    @age = age
  end
end

antonio = User.new("Antonio", "cavjzz@gmail.com", "22")
