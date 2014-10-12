module Enumerable
	def my_each
		return self unless block_given?
		for i in self
			yield i
		end
	end

	def my_each_with_index
		return self unless block_given?
		index = 0
		for i in self
			yield i, index
			index += 1
		end
	end

	def my_select
		return self unless block_given?
		output = []
		for i in self
			if yield i
				output << i
			end
		end
		output
	end

	def my_all?
		return true unless block_given?
		result = true
		self.my_each do |i|
			if !(yield i)
				result = false
			end
		end
		return result
	end

	def my_any?
		return true unless block_given?
		self.my_each do |i|
			if yield i
				return true
			end
		end
		return false
	end

	def my_none?
		return false unless block_given?
		self.my_each do |i|
			if yield i
				return false
			end
		end
		return true
	end

	def my_count
		return self.length unless block_given?
		count = 0
		self.my_each do |i|
			if yield i
				count += 1
			end
		end
		return count
	end

	def my_map(&proc)
		if proc.nil? && !block_given?
			return self
		end
		result = []
		self.my_each_with_index do |item, index|
			if !proc.nil?
				result.push(proc.call(item))
			end
			if block_given?
				result[index] = yield(item)
			end
		end
		return result
	end

	def my_inject
		result = nil
		self.my_each_with_index do |item, index|
			if index == 0
				result = item
			else
				result = yield(result, item)
			end
		end
		return result
	end
end
def multiply_els(array)
		return array.my_inject{|accumulator, item| accumulator = accumulator * item}
end
