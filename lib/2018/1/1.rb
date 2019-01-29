##
# Find the result of adding all the frequency changes in the input file.

input_file = __dir__ + '/input'

freq = 0

File.open(input_file, 'r') do |handle|
    handle.each_line do |line|
        freq += line.to_i
    end
end

puts freq