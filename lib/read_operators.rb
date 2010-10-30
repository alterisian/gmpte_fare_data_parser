# Read The Operators and populate the Operator Model
# Usage: from / of repo,
# ruby lib/read_operators

filename = 'data/gmpte_foi/FARETABLES/Operators/Operators.txt'
line_num=0
file = File.open(filename, "r") 
file.each_line do |line|
  match=line.scan /([A-Z][A-Z][A-Z])     ([\w ]* )/
  
  # Ignore the header, and any non-matches
  if line_num > 0 and !match.first.nil?
    puts "code:"+match.first.first unless match.first.first.nil?
    puts "name:"+match.first.last.strip unless match.first.last.nil?
  end
  line_num+=1
end

puts "read #{line_num-1} operators"

#TODO-Populate Rails App Operator Model


