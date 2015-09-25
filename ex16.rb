filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If u dont want that, hit CTRL-C (^C)"
puts "If u do want that, hit RETURN"

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
puts "Now im going to ask u for three lines"

print "line 1"
line1 = $stdin.gets.chomp
print "line 2"
line2 = $stdin.gets.chomp
print "line 3"
line3 = $stdin.gets.chomp

puts "im going to write these to te file"

target.write("#{line1}\n#{line2}\n#{line3}\n")
puts "And finally, we close it."
target.close
