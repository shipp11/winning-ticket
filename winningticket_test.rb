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

	def test_assert_that_is_a_loser
		winners = [1234, 4567, 6789]
		my_ticket = 5628
		assert_equal(false, ticket_search(winners, my_ticket))
	end
end
