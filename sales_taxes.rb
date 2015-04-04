class Receipt
	attr_accessor :item, :amount, :cost #cost excludes tax

	def initialize(item,amount,cost)
		@item = item
		@amount = amount
		@cost = cost 
		@total = 0
	end

	def sales_tax
		if item == "book" or item =="food" or item =="medical"
			@total = @item*@amount
		elsif @item == "imported"
			@total=(@item*1.15)*@amount
		else @total=(@item*1.10)*@amount
		end
	end	

	def output
		puts "#{@amount} #{@item}: @cost"
		puts "Your total is #{@total}."
	end
end