class Reciept
	attr_accessor :item, :amount, :cost #cost excludes tax

	def initialize(item,amount,cost)
		@item = item
		@amount = amount
		@cost = cost 
		@total = 0
	end

	def sales_tax
		if item == "book(s)" or item =="food item(s)" or item =="medical product(s)"
			@total = @cost*@amount
		elsif @item == "imported"
			@total=(@cost*@amount)*1.15
		else @total=(@cost*@amount)*1.10
		end
	end	

	def output_1
		# puts "#{@amount} #{@item}: #{@cost}"
		# @total = @total*0.5
		puts "First Output: For #{@amount} #{@item}: Your total is $#{@total}."
	end

	def output_2
		# puts "#{@amount} #{@item}: #{@cost}"
		# @total = @total*0.5
		puts "Second Output: For #{@amount} #{@item}: Your total is $#{@total}."
	end

		def output_3
		# puts "#{@amount} #{@item}: #{@cost}"
		# @total = @total*0.5
		puts "Third Output: For #{@amount} #{@item}: Your total is $#{@total}."
	end

end

input1=Reciept.new("book(s)",1,12.49)
input1.sales_tax
input2=Reciept.new("music CD",1,14.99)
input2.sales_tax
input3=Reciept.new("food item(s)",1,0.85)
input3.sales_tax

input4=Reciept.new("imported",1,10.00)
input4.sales_tax
input5=Reciept.new("imported",1,47.50)
input5.sales_tax

input6=Reciept.new("imported",1,27.99)
input6.sales_tax
input7=Reciept.new("bottle of perfume",1,18.99)
input7.sales_tax
input8=Reciept.new("medical product(s)",1,9.75)
input8.sales_tax
input9=Reciept.new("imported",1,11.25)
input9.sales_tax



input1.output_1
input2.output_1
input3.output_1
input4.output_2
input5.output_2
