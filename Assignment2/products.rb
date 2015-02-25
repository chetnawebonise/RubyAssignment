#require_relative "fileOperations"

class Products

  attr_accessor :id, :name, :price, :quantity

  include FileOperations

  def initialize()
  end

  def addProduct
    puts("\nPlease enter product details")
    puts("\nid")
    id = gets.chomp
    puts("\nName")
    name = gets.chomp
    puts("\nPrice")
    price = gets.chomp
    puts("\nQuantity")
    qty = gets.chomp

    self.write(id, name, price, qty)
  end

  def searchproduct
    puts("Enter name of product which you want to search:")
    name = gets.chomp

    self.read("inventory.txt", 'search', 'c')
  end
end