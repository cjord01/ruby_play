me = 31
puts me > 40 ? "You're getting old" : "You're not that old"

def splat_method(*parameters)
  parameters.each do |x|
    puts "You entered #{x}"
  end
end

splat_method("clay", "jordan", "ashley")

clayton = 4
puts clayton if clayton > 3

clayton_object = {
  name: "Clayton",
  height: 72,
  weight: 187
}

clayton_object.each do |key, value|
  puts "#{value}"
end

numbers = [1, 2, 3, 4, 6]
puts numbers.max
puts numbers.min

def string_times_num(str, num)
  num.times {print str}
end

string_times_num("Clayton", 5)

puts

5.downto(1).each do |num|
  puts num.even?
end

puts "This is my string thing that I want to fuck with".gsub!(/i/, "X")

puts [1,2,3,4,5].count {|x| x.even?}
puts [2,2,2,2,2,34,3,4,3,2,43,4,3,2].count(2)

string = "This is a long string that I'm going to mess around with and see if I an remove some of the vowels but still make it readable"

def remove_vowels(string)
  new_string = []
  string.split(" ").each do |word|
    if word.size > 3
      new_string << word.delete("aeiou")
    elsif word == "and"
      new_string << "&"
    else
      new_string << word
    end
  end
  new_string.join(" ")
end

puts remove_vowels(string)

array = ["clay", "jordan", "ashley", "tom", "bob", "wood"]
print array.sort
print array.sort_by { |word| word.size }
