require_relative "fileOperations"

class Users
  include FileOperations
	def initialize
		puts("Welcome to world's best inventory management!")
    puts("\nPlease select one of the options from below:")
    puts("\n1 - Sell the product")
    puts("\n2 - Buy product")
    @user = gets.to_i
	end

  def askForAction
    puts("What would you like to do?")
    option = self.selectActions().to_i
    return option
  end

  def selectActions
    if @user == 1
      puts("\nChoose an option:-\n1 - Add\n 2- edit\n 3- remove\n 4- list\n 5- search")
      option = gets.chomp
    end

    if @user == 2
      puts("\nChoose an option:-\n1 - List\n 2- Search\n 3- Buy")
      option = gets.chomp
    end
    return option
  end

  def callActions(prod, option)
    if @user == 1
      case option
      when 1
        #add product
        prod.addProduct

      when 4
        #list product
        puts("All Products list")
        prod.read("inventory.txt", 'list', '')

      when 5
        #search product
        prod.searchProduct

      else
        puts "Invalid Option"
      end
    elsif @user == 2
      case option
      when 1
        puts("All Products list")
        prod.read("inventory.txt", 'list', '')

      when 2
        prod.searchProduct

      when 3
        prod.buyProduct

      else
        puts "Invalid Option"
      end
    end
  end
end