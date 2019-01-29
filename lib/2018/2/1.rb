##
# Count number of items from input that have exactly 2 of any letter
# And have exactly 3 of any letter.

input_file = __dir__ + '/input'
inputs = File.readlines(input_file)

$has_2_letters = 0
$has_3_letters = 0

inputs.each do |i|
    @has_2 = false
    @has_3 = false

    #puts i
    groups = i.chars.group_by { |c| c }

    groups.each do |k, v|
        case v.size
        when 2
            @has_2 = true
        when 3
            @has_3 = true
        end
    end

    if @has_2
        $has_2_letters += 1
    end

    if @has_3
        $has_3_letters += 1
    end
end

puts $has_2_letters
puts $has_3_letters

checksum = $has_2_letters * $has_3_letters
puts checksum