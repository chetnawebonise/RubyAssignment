module FileOperations
  FILENAME = "inventory.txt"

	def read(filename, action, str)
    prod = ""
		File.open(filename, "r+") do |f|
      f.each_line do |line|
        prod << line

        pos = line.index(":")
        if line[0, pos] == "Quantity"
          prod = ""
        end

        if line[0, pos] == "Name"
          if action == 'list'
            puts prod
          elsif action == 'search'
            if line.index(str) != ""
              prodDetail = prod
              puts prodDetail
            end
          end
        end

		  end
    end
  end

  def write(id, name, price, qty)
    File.open(FILENAME, "a+") do |f|
      f.puts "Id:#{id}"
      f.puts "Name:#{name}"
      f.puts "Price:#{price}"
      f.puts "Quantity:#{qty}"
    end
  end
end