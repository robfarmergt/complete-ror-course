MAX_ATTEMPTS = 5

database = [
  { username: "rob", password: "password1" },
  { username: "hayley", password: "password2"},
]

attempt = 1
correct_password = false

puts "Welcome to the authenticator"
25.times { print '-'}
puts

begin
  print "username: "
  username = gets.chomp
  print "password: "
  password = gets.chomp

  result = database.select { |record| record[:username] == username && record[:password] == password }

  if !result.empty?
    puts "correct!"
    print result
    puts
    break
  end

  if(attempt == MAX_ATTEMPTS)
    puts "maximum failed attempts reached"
  else
    puts "incorrect username/password, try again"
  end

  attempt = attempt + 1
end while attempt <= MAX_ATTEMPTS

puts "...exiting"
