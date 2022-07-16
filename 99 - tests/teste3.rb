class Product
    attr_reader :name, :price
    def initialize(name, price)
      @name, @price = name, price
    end
    def ==(other)
      self.name  == other.name && self.price == other.price
    end
  end
  p1 = Product.new('book', 49)
  p2 = Product.new('book', 49)
  teste = p1 == p2 # true
  puts teste.to_s