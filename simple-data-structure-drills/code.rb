transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:
puts "Dr. Dre\'s Bank Account:"
# * What is the value of the first transaction?
puts "First transaction is #{transactions[0]}"
# * What is the value of the second transaction?
puts "Second transaction is #{transactions[1]}"
# * What is the value of the fourth transaction?
puts "Fourth transaction is #{transactions[3]}"
# * What is the value of the last transaction?
puts "Last transaction is #{transactions.last}"
# * What is the value of the second from last transaction?
puts "Second-to-last transaction is #{transactions[-2]}"
# * What is the value of the 5th from last transaction?
puts "Fifth from last transaction is #{transactions[-5]}"
# * What is the value of the transaction with index 5?"
puts "Transaction with index 5 is #{transactions[5]}"
# * How many transactions are there in total?
puts "Total number of transactions: #{transactions.count}"
# * How many positive transactions are there in total?
puts "Number of positive transactions: #{transactions.count { |entry| entry > 0 }}"
# * How many negative transactions are there in total?
puts "Number of negative transactions: #{transactions.count { |entry| entry < 0 }}"
# * What is the largest withdrawal?
puts "Largest withdrawal: #{transactions.min}"
# * What is the largest deposit?
puts "Largest deposit: #{transactions.max}"
# * What is the smallest withdrawal?
withdrawals = []
transactions.each { |entry| withdrawals << entry if entry < 0 }
puts "Smallest withdrawal: #{withdrawals.max}"
# * What is the smallest deposit?
deposits = []
transactions.each { |entry| deposits << entry if entry > 0 }
puts "Smallest deposit: #{deposits.min}"
# * What is the total value of all the transactions?
value = 0
transactions.each { |entry| value += entry.abs }
puts "Total transaction value: #{value}"
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
balance = 239_900
transactions.each { |entry| balance += entry }
puts "Dr Dre\'s ending balance: #{balance}"
puts

best_records = {
 'Tupac'=>'All Eyez on Me',
 'Eminem'=>'The Marshall Mathers LP',
 'Wu-Tang Clan'=>'Enter the Wu-Tang (36 Chambers)',
 'Led Zeppelin'=>'Physical Graffiti',
 'Metallica'=>'The Black Album',
 'Pink Floyd'=>'The Dark Side of the Moon',
 'Pearl Jam'=>'Ten',
 'Nirvana'=>'Nevermind'
  }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts "Total number of records: #{best_records.values.count}"
puts
# * Who are all the artists listed?
puts 'Artist names:'
best_records.keys.each { |entry| puts entry }
puts
# * What are all the album names in the hash?
puts 'Album names:'
best_records.values.each { |entry| puts entry }
puts
# * Delete the `Eminem` key-value pair from the list.
best_records.delete('Eminem')
# * Add your favorite musician and their best album to the list.
best_records['The Strokes'] = 'Is this it?'
# * Change `Nirvana`'s album to another.
best_records['Nirvana'] = 'In Utero'
# * Is `Nirvana` included in `best_records`?
puts "Nirvana included: #{best_records.include?('Nirvana')}"
puts
# * Is `Soundgarden` included in `best_records`?
puts "Soundgarden included: #{best_records.include?('Soundgarden')}"
puts
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
best_records['Soundgarden'] ||= 'Superunknown'
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
puts 'Artists less than or equal to 6 characters long:'
best_records.each do |artist, album|
  puts "#{artist}: #{album}" unless artist.length > 6
end
puts
# * Which key-value pairs have a value that is greater than 10 characters?
puts 'Albums greater than 10 characters long:'
best_records.each do |artist, album|
  puts "#{artist}: #{album}" if album.length > 10
end
