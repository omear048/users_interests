@hash = {:jamy=>{:email=>"jamy.rustenburg@gmail.com", :interests=>["woodworking", "cooking", "reading"]}, :nora=>{:email=>"nora.alnes@yahoo.com", :interests=>["cycling", "basketball", "economics"]}, :hiroko=>{:email=>"hiroko.ohara@hotmail.com", :interests=>["politics", "history", "birding"]}}


@hash.each do |key, value_hash|
  puts value_hash[:email]
  puts value_hash[:interests]
end

puts @hash[:jamy]

@hash[:jamy].each do |key, value|
  puts value
end

#puts hash[:jamy][:interests]

@name = 'jamy'



def count_interests(parameter)
  total_users = 0
  total_interests = 0

  parameter.each do |key, value_hash|
    total_users += 1
    total_interests += value_hash[:interests].count
  end

  puts "There are #{total_users} users with a total of #{total_interests} interests"
end

count_interests(@hash)