dial_book = {
  "atlanta" => "404",
  "ocala" => "123",
}.freeze

def get_city_names(somehash)
  puts somehash.keys
end

def get_area_code(somehash, key)
  somehash[key]
end

loop do
  print "Do you want to look up an area code by city name? [Y/N] "
  break if gets.chomp.downcase != "y"
  get_city_names(dial_book)
  print ":> "
  user_request = gets.chomp
  puts get_area_code(dial_book, user_request) || "<not found>"
end