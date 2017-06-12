
require "./Resume_Fields_Validation.rb"

class ResumeBuilder
	include ResumeFieldsValidation
	
		attr_accessor :first_name, :last_name, :email, :phone, :date_of_birth, :work_experience, :work_description 
	
	def resume_file
		my_resume_file = File.new("my_resume.txt","a+")
		my_resume_file.syswrite("\t\tMy Resume Created Using Resume Builder\n\n")
		my_resume_file.puts("Personal details :\n\n")
		my_resume_file.puts("\tFirst Name :#{@first_name}")
		my_resume_file.puts("\tLast Name :#{@last_name}")
		my_resume_file.puts("\tEmail :#{@email}")
		my_resume_file.puts("\tPhone :#{@phone}")
		my_resume_file.puts("\tDate Of Birth :#{@date_of_birth}")
		my_resume_file.puts("\n\nProfessional details :\n\n")
		my_resume_file.puts("\tWork Experience :#{@work_experience}")
		my_resume_file.puts("\tWork Description :#{@work_description}")
	end


	def self.start
		resume = ResumeBuilder.new
		resume.user_input
		resume.resume_file
		puts "\n\nThanks for using Resume Builder\n\n"
		
	end

	def user_input
		puts "\n\n"
		puts "*******---------************---------*******"
		puts "Welcome To Resume Builder Using Ruby\n\n"
		puts "Personal Details:\n\n"
		
		begin
			print "First Name :"
			@first_name = gets.chomp
		end while is_valid_name? (first_name)
        
        begin
			print "Last Name :"
			@last_name = gets.chomp
		end while is_valid_name? (last_name)

		begin
			print "Email :"
			@email = gets.chomp
		end while is_valid_email? (email)

		begin
			print "Phone :"
			@phone = gets.chomp
		end while is_valid_phone? (phone)

		begin
			print "Date Of Birth :"
			@date_of_birth = gets.chomp
		end while is_valid_dob? (date_of_birth)

		puts "\nProfessional Details:\n\n"

		begin
			print "Work Experience :"
			@work_experience = gets.chomp
		end while is_number? (work_experience)

		begin
			print "Work Description :"
			@work_description = gets.chomp
		end while is_valid_name? (work_description)
	end
end

ResumeBuilder.start
