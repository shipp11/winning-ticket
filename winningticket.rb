def winning_nums(winners, my_ticket)
	winners.class
end

def my_ticket_length(winners, my_ticket)
	my_ticket.to_s.length
end

def ticket_search(winners, my_ticket) 
	counter = 0 
	results =  []
	winners.each do |raffles|
		raffles = raffles.to_s
		my_ticket = my_ticket.to_s
		if my_ticket[0] == raffles[0]
			counter += 1
		end
		if my_ticket[1] == raffles[1]
			counter += 1
		end
		if my_ticket[2] == raffles[2]
			counter += 1
		end
		if my_ticket[3] == raffles[3]
			counter += 1
		end
		if counter == 4
			results.push("winner")	
				 
		elsif counter == 3 
			results.push("so close")
		else 
			results.push("loser")
		end
	end

	if results.include?("winner") == true
		"winner"
	elsif results.include?("so close") == true
		"so close"
	else
		"loser"
	end
end
			
			


		# if raffle = my_ticket
		# 	"Winner!"
		