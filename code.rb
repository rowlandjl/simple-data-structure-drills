transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
puts transactions.first
# * What is the value of the second transaction?
puts transactions[1]
# * What is the value of the fourth transaction?
puts transactions[3]
# * What is the value of the last transaction?
puts transactions.last
# * What is the value of the second from last transaction?
puts transactions[-2]
# * What is the value of the 5th from last transaction?
puts transactions[-5]
# * What is the value of the transaction with index 5?
puts transactions[5]
# * How many transactions are there in total?
puts transactions.length
# * How many positive transactions are there in total?
num_positive = 0
transactions.each do |numbers|
  if numbers >= 0
    num_positive += 1
  end
end
puts num_positive
# * How many negative transactions are there in total?
num_negative = 0
transactions.each do |numbers|
  if numbers < 0
    num_negative += 1
  end
end
puts num_negative
# * What is the largest withdrawal?
withdrawal_array = []
transactions.each do |withdrawals|
  if withdrawals < 0
    withdrawal_array << withdrawals
  end
end
puts withdrawal_array.sort.first
# * What is the largest deposit?
deposit_array = []
transactions.each do |deposits|
  if deposits >= 0
    deposit_array << deposits
  end
end
puts deposit_array.sort.last
# * What is the small withdrawal?
withdrawal_array = []
transactions.each do |withdrawals|
  if withdrawals < 0
    withdrawal_array << withdrawals
  end
end
puts withdrawal_array.sort.last
# * What is the smallest deposit?
deposit_array = []
transactions.each do |deposits|
  if deposits >= 0
    deposit_array << deposits
  end
end
puts deposit_array.sort.first
# * What is the total value of all the transactions?
value = 0
transactions.each do |sum|
  value += sum
end
puts value
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
puts 239900 - transactions.last

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:
puts "--------"
# * How many records are in `best_records`?
puts best_records.length
# * Who are all the artists listed?
puts best_records.keys.join(', ')
# * What are all the album names in the hash?
puts best_records.values.join(', ')
# * Delete the `Eminem` key-value pair from the list.
best_records.delete('Eminem')
# * Add your favorite musician and their best album to the list.
best_records['Thirty Seconds to Mars'] = 'This is War'
# * Change `Nirvana`'s album to another.
best_records['Nirvana']= 'In Utero'
# * Is `Nirvana` included in `best_records`?
puts best_records.include?('Nirvana')
# * Is `Soundgarden` included in `best_records`?
puts best_records.include?('Soundgarden')
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
best_records['Soundgarden']= 'Superunknown'
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
best_records.each_key do |key|
  if key.length <= 6
    puts key
  end
end
# * Which key-value pairs have a value that is greater than 10 characters?
best_records.each_value do |values|
  if values.length > 10
    puts values
  end
end
