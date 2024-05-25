def caesar_cipher(string, shift)
    ascii_array = []
    for c in 0...string.length
        ascii_array.push(string[c].ord)
    end
    for c in 0...ascii_array.length
        if ascii_array[c] >= "a".ord && ascii_array[c] <= "z".ord
            ascii_array[c] += shift
            if ascii_array[c] > "z".ord
                ascii_array[c] -= 26
            end
        elsif ascii_array[c] >= "A".ord && ascii_array[c] <= "Z".ord
            ascii_array[c] += shift
            if ascii_array[c] > "Z".ord
                ascii_array[c] -= 26
            end
        end
    end
    return ascii_array.map { |number| number.chr}.join
end

while true
    puts "Enter your string (or f to finish): "
    string_input = gets.chomp.strip

    break if string_input == "f"

    puts "Shift number : "
    shift_input = gets.chomp.strip.to_i

    result = caesar_cipher(string_input, shift_input)
    puts "The result is:  #{result}\n"
end