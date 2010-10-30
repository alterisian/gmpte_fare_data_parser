# Read The Operators and populate the Operator Model
filename = '../data/gmpte_foi/FARETABLES/Operators/Operators.txt'
line_num=0
file = File.open(filename, "r") 
file.each_line do |line|
  match=line.scan /([A-Z][A-Z][A-Z])     ([\w ]* )/
  if line_num > 0 and !match.first.nil?
    puts "code:"+match.first.first unless match.first.first.nil?
    puts "name:"+match.first.last unless match.first.last.nil?
  end
  line_num+=1
end

puts "read #{line_num} lines"


