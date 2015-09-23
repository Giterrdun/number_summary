# @author Michelle Mao  <mm321whatsup@gmail.com>
class NumberSummary
	class << self
		
		def convert_to_float(file)
			file = File.open("data.csv", 'r')
			line = file.each_line.first
			array_1 = line.split(',')
			array = []
			for n in 0...array_1.length
				array.push(array_1[n.to_f])
			end
		end

			def max(array)
				return array.max
			end

			def min(array)
				return array.min  
			end

			def mean(array)
				y = 0.0
				for x in 0...array.length	
					y += array[x]
				end
				y / array.length 
			end
			
			# def mode(array)
			# mode = Hash.new(0)
			# 	array.each do |n|
			# 		if mode.has_key?(n)
			# 			mode[n] = mode[n] + 1
			# 		else
			# 			mode[n] = 1
			# 		end
			# 	end
			# return mode.select { |k,v| v == mode.values.max}.keys
			# end
			def mode(array)
				array = array.sort
				array_key = []
				array_value = []
				for n in 0...array.length
					if array_key.include? n

					else
						array_key.push(array[n])
						array_value.push()

				end
			end

			def median(array)
				if array.length % 2 == 0
					array = array.sort
					return (array[array.length/2] + array[(array.length/2) - 1])/ 2.0
				else
					array = array.sort
					return array[(array.length - 1)/ 2]
				end	
			end

 







 end
end