# @author Michelle Mao  <mm321whatsup@gmail.com>
#@author Juan Rodriguez <rodriguesmelojp@s.dcsdk12.org>
class NumberSummary
	class << self
		
		def convert_to_float(file)
			file = File.open("data.csv", 'r')
			line = file.each_line.first
			array_1 = line.split(',')
			array = []
			for n in 0...array_1.length
				array.push(array_1[n].to_f)
			end
			return array
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
				y = y / array.length 
				return y.round(1)
			end
			
			def mode(array)
				array = array.sort
				array_of_count = []
				max_of_count = []
				array_of_values = []
				final_array = []
				count = 1
				original_count = 1
				for n in 0...array.length
					if array[n] == array[n + 1]
						count += 1
					else
						array_of_count.push(count)
						array_of_values.push(array[n])
						count = original_count
					end
				end
				max_count = array_of_count.max
				for n in 0...array_of_count.length
					if array_of_count[n] == max_count
						final_array.push(array_of_values[n])
					end
				end
				return final_array
			end

			def median(array)
				if array.length % 2 == 0
					array = array.sort
					return ((array[array.length/2] + array[(array.length/2) - 1])/ 2.0).round(1)
				else
					array = array.sort
					return array[(array.length - 1.0)/ 2.0]/1.0
				end	
			end

			def q1(array)
				array = array.sort
				array_even = []
				array_odd = []
				if array.length % 2 == 0
					for n in 0..((array.length/2)-1)
						array_even.push(array[n])
					end
					return median(array_even)
				else
					for n in 0...((array.length - 1)/2)
						array_odd.push(array[n])
					end
					return median(array_odd)
				end
			end
			
			def q3(array)
				array = array.sort
				array_even = []
				array_odd = []
				if array.length % 2 == 0
					for n in (array.length/2)..(array.length - 1)
						array_even.push(array[n])
					end
					return median(array_even)
				else
					for n in (((array.length - 1)/2) + 1)..(array.length-1)
						array_odd.push(array[n])
					end
					return median(array_odd)
				end
			end

			def sigma(array)
				sum_of_array = 0
				for n in 0...array.length
					sum_of_array+=array[n]
				end
				mean_of_array = sum_of_array/array.length.to_f
				sum = 0
				for n in 0...array.length
					sum += (array[n]-mean_of_array)**2.0
				end
				sum = sum/(array.length - 1.0).to_f
				return Math.sqrt(sum).round(1)
			end

				def summarize(file)
					file = convert_to_float(file)
					return """Number Summary:
min: #{(min(file))}
max: #{(max(file))}
mean: #{(mean(file)).round(1)}
median: #{(median(file)).round(1)}
q1: #{(q1(file)).round(1)}
q3: #{(q3(file)).round(1)}
mode: #{(mode(file))}
sigma: #{(sigma(file)).round(1)}
"""
				end
	end
end


