module ResumeFieldsValidation

	def is_valid_name? (name_)
		if name_.match("^[a-zA-Z\\s]+$")== nil ? true : false
			puts "\n-------------------------------------------\nEnter valid name\n-------------------------------------------\n\n"
			return true
			else
			return false
		end
	end 

	def is_valid_email? (email)
		if email.match("[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$") == nil ? true : false
			puts "\n-------------------------------------------\nEnter valid email id\n-------------------------------------------\n\n"
			return true
			else
			return false
		end
	end

	def is_valid_phone? (phone)
		if phone.match("^[0-9]{10}$") == nil ? true : false
			puts "\n-------------------------------------------\nEnter valid 10 digit mobile number\n-------------------------------------------\n\n"
			return true
			else
			return false
		end
	end

	def is_valid_dob? (dob)
		if dob.match("^(?=\\d{2}([-.,\\/])\\d{2}\\1\\d{4}$)(?:0[1-9]|1\\d|[2][0-8]|29(?!.02.(?!(?!(?:[02468][1-35-79]|[13579][0-13-57-9])00)\\d{2}(?:[02468][048]|[13579][26])))|30(?!.02)|31(?=.(?:0[13578]|10|12))).(?:0[1-9]|1[012]).\\d{4}$") == nil ? true : false
			puts "\n-------------------------------------------\nEnter valid date\n-------------------------------------------\n\n"
			return true
		else
			return false
		end
	end

	def is_number? (number)
		begin
			false if Float(number)
		rescue
			puts "\n-------------------------------------------\nEnter experience in number of years\n-------------------------------------------\n\n"	
			return true
		end
	end

end