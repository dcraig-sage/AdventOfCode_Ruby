##
# Find the first frequency that is repeated.

input_file = __dir__ + '/input'

freq = 0 # Current frequency
freqs_found = [] # List of found frequencies
has_repetition = false # 

inputs = File.readlines(input_file)

while(!has_repetition) do
    inputs.each { |change|
        freq += change.to_i
        if freqs_found.include?(freq)
            has_repetition = true
            break
        else
            freqs_found << freq
        end
    }
end

puts freq