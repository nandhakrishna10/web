
puts "Hello, World!"
num1 = 10
num2 = 5
sum = num1 + num2
puts "Sum of #{num1} and #{num2} is #{sum}"

puts "-----------------------------------------------------------------------------------"
float1 = 3.14
float2 = 2.5
product = float1 * float2
puts "Product of #{float1} and #{float2} is #{product}"

puts "-----------------------------------------------------------------------------------"
name = "Alice"
greeting = "Hello, #{name}!"
puts greeting

puts "-----------------------------------------------------------------------------------"
fruits = ["apple", "banana", "orange"]
puts "First fruit: #{fruits[0]}"
puts "Second fruit: #{fruits[1]}"
person = {
 "name" => "Bob",
 "age" => 30,
 "city" => "New York"
}
puts "#{person['name']} is #{person['age']} years old and lives in #{person['city']}."

puts "-----------------------------------------------------------------------------------"

# Conditional Statements
age = 18
if age >= 18
 puts "You are eligible to vote."
else
 puts "You are not eligible to vote yet."
end
grade = 'B'
case grade
when 'A'
 puts "Excellent!"
when 'B'
 puts "Good job!"
when 'C'
 puts "You can do better."
else
 puts "Try harder next time."
end
# Loops

puts "-----------------------------------------------------------------------------------"
count = 1
while count <= 5
 puts "Count: #{count}"
 count += 1
end
for i in 1..3
 puts "Iteration: #{i}"
end


puts "-----------------------------------------------------------------------------------"
# Nested loops and conditional statements
rows = 3
cols = 3
for i in 1..rows
 for j in 1..cols
 if i == j
 print "X "
 else
 print "O "
 end
 end
 puts ""
end

puts "-----------------------------------------------------------------------------------"
def greet(name)
    puts "Hello, #{name}!"
   end
   greet("Santhosh")
   def greet_with_message(name, message="Good day!")
    puts "#{message}, #{name}!"
   end
   greet_with_message("Sachin")
   greet_with_message("Sabarish", "Have a great day!")
   def sum(*numbers)
    total = 0
    numbers.each { |num| total += num }
    return total
   end
   puts "Sum: #{sum(1, 2, 3, 4, 5)}"
   def square(number)
    return number * number
   end
   result = square(5)
   puts "Square of 5 is #{result}"

puts "-----------------------------------------------------------------------------------"
fruits = ["apple", "banana", "orange"]
puts "Original array: #{fruits}"
fruits << "grape"
fruits.push("jackfruit")
puts "Array after adding elements: #{fruits}"
fruits.pop
fruits.delete_at(1)
puts "Array after removing elements: #{fruits}"
puts "First element: #{fruits[0]}"
puts "Last element: #{fruits[-1]}"
numbers = [1, 2, 3, 4, 5]
squared_numbers = numbers.map { |num| num * num }
puts "Squared numbers: #{squared_numbers}"
even_numbers = numbers.select { |num| num.even? }
puts "Even numbers: #{even_numbers}"
sum = numbers.reduce(0) { |acc, num| acc + num }
puts "Sum of numbers: #{sum}"