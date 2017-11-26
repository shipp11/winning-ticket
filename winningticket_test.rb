require "minitest/autorun"
require_relative "winningticket.rb"
class Testwinningticket < Minitest::Test

	def test_assert_1_is_1
		assert_equal(1, 1)
	end

	def test_assert_that_there_is_an_array_for_winning_numbers
		winners = [1234, 4567, 6789]
		my_ticket = 1234
		assert_equal(Array, winning_nums(winners, my_ticket))
	end

	def test_assert_that_my_ticket_is_4_digits
		winners = [1234, 4567, 6789]
		my_ticket = 1234
		assert_equal(4, my_ticket_length(winners, my_ticket))
	end

	def test_assert_that_my_ticket_is_in_winners_array
		winners = [1234, 4567, 6789]
		my_ticket = 1234
		assert_equal(true, ticket_search(winners, my_ticket))
	end

	def test_assert_that_is_a_array_for_so_close_number
		so_close = [1134, 4557, 6889]
		my_ticket = 1234
		assert_equal(false, ticket_search(so_close, my_ticket))
	end

	def test_assert_that_is_a_array_for_losing_number
		losing_number = [4321, 7654, 9876]
		my_ticket = 1234
		assert_equal(false, ticket_search(losing_number, my_ticket))
	end

end
