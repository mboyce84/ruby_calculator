#This is a simple calculator using Ruby. The command line will prompt for the operation type, two numbers, and then perform the operation and return the results to the screen. The calculator has a method for operator validation. If the user types an incorrect or mispelled 

def operation_validation(operation)
	if operation == "a"
		puts "You selected Add."
	elsif operation == "s"
		puts "You selected Subtract."
	elsif operation == "m"
		puts "You selected Multiply."
	elsif operation == "d"
		puts "You selected Divide."
	else
		puts "Operation is not recognized or is typed incorrectly. Please try again."
		operation = gets.downcase.chomp
		operation_validation(operation)
	end
end			

def multiply(fnum,snum)
	result = fnum * snum
	result = result.to_s
end

def add(fnum,snum)
	result = fnum + snum
	result = result.to_s
end

def subtract(fnum,snum)
	result = fnum - snum
	result = result.to_s
end

def divide(fnum,snum)
	fnum = fnum.to_f
  snum = snum.to_f
	result = fnum / snum
	result = result.to_s
end

puts "What type of operation would you like to perform? Enter the letter and press Enter."
puts "Type A' to add"
puts "Type M to multiply"
puts "Type S to subtract"
puts "Type D to divide"

operation = gets.downcase.chomp
operation_validation(operation)

puts "Enter first number"
fnum = gets.chomp.to_i

puts "Enter second number"
snum = gets.chomp.to_i

if operation == "a"
	returned_value = add(fnum,snum)
elsif operation == "s"
	returned_value = subtract(fnum,snum)
elsif operation == "m"
	returned_value = multiply(fnum,snum)
elsif operation == "d"
	returned_value = divide(fnum,snum)
	else
end

puts "The result of both numbers is" + " " + returned_value