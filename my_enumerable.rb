
module Enumerable

	def my_each
		if block_given?
			for i in self
				yield(i)
			end
		end
		return self.to_enum
	end

	def my_each_with_index
		if block_given?
			for i in self
				yield(i,self.index(i))
			end
		end
		return self.to_enum
	end

	def my_select
		if block_given?
			arr = []
			for i in self
				arr << i if yield(i)
			end
			return arr
		end
		return self.to_enum()
	end


end


list = [1,2,3,4,5,6]

puts 'my_each:'
list.my_each {|x| puts x+5}
puts list.my_each

puts 'my_each_with_index:'
list.my_each_with_index do |x,y|
	puts x, y
end
enum2 = list.my_each_with_index
enum2.next()
enum2.next()

select_arr = list.my_select { |x| x % 2 == 0 }
puts 'select array:'
puts select_arr

select_arr = list.my_select
puts 'select array:'
puts select_arr
puts select_arr.next()
puts select_arr.next()
puts select_arr.next()