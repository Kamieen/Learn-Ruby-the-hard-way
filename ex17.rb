from_file, to_file = ARGV
puts "Copying from #{from_file} to #{to_file}"
indata  = open(from_file).read

out_file = open(to_file, "w")
out_file.write(indata)

puts "allright, all done"
out_file.close
