require 'minitest/autorun'


require_relative 'number_summary'

class NumberSummaryTest < MiniTest::Test
	
end

module NumberSummaryTests
	class Max < NumberSummaryTest
		def test_max
			assert_equal 10, NumberSummary.max([0, 1, 2, 3, 4, 5,6,7, 8,9 ,10 ])
			assert_equal 8, NumberSummary.max([8, 8, 8, 8, 8, 8,8,8,8])
			assert_equal -1, NumberSummary.max([-1, -2, -3 ,-4, -5, -6 ,-7 ,-8 ,-10])
			assert_equal 9.89, NumberSummary.max([1.3,4.8,7.6,5.5,-8.9,9.89])
		end
	end
	class Min < NumberSummaryTest
		def test_min
			assert_equal 0, NumberSummary.min([0, 1, 2, 3, 4, 5,6,7, 8,9 ,10 ])
			assert_equal 8, NumberSummary.min([8, 8, 8, 8, 8, 8,8,8,8])
			assert_equal -10, NumberSummary.min([-1, -2, -3 ,-4, -5, -6 ,-7 ,-8 ,-10])
		end
	end
	class Mean < NumberSummaryTest
		def test_mean
			assert_equal 5, NumberSummary.mean([0,10])
			assert_equal 25, NumberSummary.mean([0, 0, 0, 100])
			assert_equal 7.5, NumberSummary.mean([0,15])
			assert_equal 5.8, NumberSummary.mean([0,11.5])
		end
	end
	class Mode < NumberSummaryTest
		def test_mode
			assert_equal [1], NumberSummary.mode([1,1,1,1,1,2,2,6,7,8,6,7,8,])
			assert_equal [1,2,3,45,67,], NumberSummary.mode([1,2,3,45,67])
			assert_equal [4.8], NumberSummary.mode([4.8,4.8,6.0,5.0,2.3,2.3,4.8])	
		end
	end
	class Median < NumberSummaryTest
		def test_median
			assert_equal 3, NumberSummary.median([1,2,3,4,5])
			assert_equal 4.5 , NumberSummary.median([3,6,7,8,2,1,5,4])
		end
	end
	class Q1 < NumberSummaryTest
		def test_q1
			assert_equal 2.5 , NumberSummary.q1([1,2,3,4,5,6,7,8])
			assert_equal 1.5, NumberSummary.q1([1,2,3,4,5])
		end
	end
	class Q3 < NumberSummaryTest
		def test_q3
			assert_equal 7.5 , NumberSummary.q3([1,2,3,4,5,6,7,8,9])
			assert_equal 6.5, NumberSummary.q3([2,4,6,5,1,8,3,7])
		end
	end
	class Sigma < NumberSummaryTest
		def test_sigma
			assert_equal 4.6 , NumberSummary.sigma([20,23,23,24,25,22,12,21,29])
		end
	end




end




