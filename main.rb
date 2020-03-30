dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "sanantonio" => "210",
  "plainsboro" => "301",
  "sanfrancisco" => "302",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717",
  "losangeles" => "727"
  "austin" => "214"

}


# Get area code
def get_area_code(input, dial_book)
  dial_book.each { |city, area|
  if input == city
    return area
  end
}
 return "can't find info" 
end

# Get city names from the hash
def get_city_name(input2, dial_book)
  dial_book.each { |city, area|  
  if input2 == area
    return city
  end
}
 return "can't find info"
end

# Execution flow
loop do 
  
  puts "Do you want to look up a city or area code?  (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  
  puts "Okay, do you want to check area code or city name?(city/area)"
  answer_two = gets.chomp.downcase
  
  if answer_two == "area"
    puts "please put the city name?"
    input = gets.chomp.downcase
    result2 = get_area_code(input, dial_book)
    puts "here is the area code: #{result2}"
  elsif answer_two == "city"
    puts "please type in the area code?"
    input2 = gets.chomp.downcase
    result3 = get_city_name(input2, dial_book)
    puts "here is the city name: #{result3}"
  else
    break
  end

end