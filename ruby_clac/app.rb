# puts "this is your calculator"

puts "This is my Ruby Calculator"

def add_numbers num1,num2 
	num1 + num2
end

def subtract_numbers num1,num2 
	num1 - num2
end 

def multiply_numbers num1,num2 
	num1 * num2
end 
	
def divide_numbers num1,num2
	num1 / num2
end 

def power num1,num2 
	num1 **num2
end 

def square num 
	num**0.5
end


def again
	puts "Do you wish to do another calculation?\n Y: Yes"
	choice = gets.chomp.upcase
	if choice == 'Y' then 
		calculator
	else
		puts 'End' 
	end 
end

def calculator 
	puts "Menu\n A: Basic Calculator\n B: Advanced Calculator\n"
	choice = gets.chomp.upcase

	if choice.eql? "A" then
		puts "Enter operation: \n +, - , *, /:"
		operation = gets.chomp
		puts "Enter First Number: "
		number1 = gets.chomp.to_f
		puts "Enter Second number: "
		number2 =gets.chomp.to_f

	case operation 

	when "+"
		result = add_numbers number1, number2  
		puts "The result is #{result}"
		again
	when "-"
		result = subtract_numbers number1, number2
		puts "The result is #{result}"
		again
	when "*"
		result = multiply_numbers number1, number2
		puts "The result is #{result}"
		again
	when "/"
		result = divide_numbers number1, number2
		puts "The result is #{result}"
		again
	else 
		puts "Not a valid input! "
		calculator
	end 

	elsif choice.eql? "B" then 
		puts "Advanced Calculator: \n PWR: Power \n SQ: Square Root"
		choiceb = gets.chomp.upcase
		case choiceb

		when "PWR"
			puts "Enter First Number: "
			number1 = gets.chomp.to_f
			puts "Enter Exponential: "
			number2 =gets.chomp.to_f
			result = power number1, number2
			puts "The result is #{result}"
			again

		when "SQ"
			puts "Enter number you wish to find the square root of: "
			number1 = gets.chomp.to_f
			result = square number1
			puts "The result is #{result}"
			again
		else 
			puts "Not a valid input"
			calculator
	end 
		again

	end 
end 
calculator
