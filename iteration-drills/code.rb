#Write Ruby<->English answers here as comments in your code

#1. For every element, called 'number', in the array 'numbers', print the 'number' multiplied by 3

#2. For every element, called 'name', in the array 'names', print out the length of the 'name'

#3. Add each element, called 'number', in the array 'numbers', to the 'sum'. At the end, print the final 'sum'.

#4. For every name-age pair in the hash 'hash', print out the 'name' and the 'age' elements.

#5. For every transaction-value pair in the hash 'account', add the 'value' to the 'sum'. At the end, print the final 'sum'.

#6. For every name-address pair in the hash 'addresses', print out the 'name' and the 'address' elements.

# #1.
# sentences.each do |word|
#   puts word
# end
#
# #2.
#
# numbers.each do |phone_number|
#   puts phone_number if ['617', '978', '351', '781', '339', '413'].include?(phone_number.to_s.chars.first(3).join)
# end
#
# #3.
# numbers.each do |number|
#   puts number if number.odd?
# end
#
# #4.
# ages.each do |name, age|
#   puts '#{name} is #{age} years old.'
# end
#
# #5.
# ages.each do |name, age|
#   puts '#{name} is #{age} years old.' if age > 10
# end
#
# #6.
# ages.each do |name, age|
#   puts '#{name} is #{age} years old.' if age.even?
# end


array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:

# * What is the sum of all the numbers in `array`?
# * How would you print out each value of the array?
# * What is the sum of all of the even numbers?
# * What is the sum of all of the odd numbers?
# * What is the sum of all the numbers divisble by 5?
# * What is the sum of the squares of all the numbers in the array?

sum = 0
array.each do |number|
  sum += number
end
puts "Sum of all numbers: #{sum}"
puts

puts 'List of all numbers in array:'
array.each do |number|
  puts number
end
puts

sum = 0
array.each do |number|
  sum +=  number if number.even?
end
puts "Sum of all even numbers: #{sum}"
puts

sum = 0
array.each do |number|
  sum +=  number if number.odd?
end
puts "Sum of all odd numbers: #{sum}"
puts

sum = 0
array.each do |number|
  sum +=  number if (number % 5).zero?
end
puts "Sum of all multiples of 5: #{sum}"
puts

sum = 0
array.each do |number|
  sum +=  number * number
end
puts "Sum of squares: #{sum}"
puts


array = ['joanie', 'annamarie', 'muriel', 'drew', 'reva', 'belle', 'amari', 'aida', 'kaylie', 'monserrate', 'jovan', 'elian', 'stuart', 'maximo', 'dennis', 'zakary', 'louvenia', 'lew', 'crawford', 'caitlyn']

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
# * What are the total number of characters in the names in `array`?
# * How many names in `array` are less than 5 characters long?
# * How many names in `array` end in a vowel?
# * How many names in `array` are more than 5 characters long?
# * How many names in `array` are exactly 5 characters in length?

puts 'Each name backwards:'
array.each do |name|
  puts name.reverse
end
puts

count = 0
array.each do |name|
  count += name.length
end
puts "Total number of characters: #{count}"
puts

count = 0
array.each do |name|
  count += 1 if ['a', 'e', 'i', 'o', 'u'].include?(name[name.length-1])
end
puts "Number of names ending in a vowel: #{count}"
puts

count = 0
array.each do |name|
  count += 1 if name.length > 5
end
puts "Number of names more than 5 letters long: #{count}"
puts

count = 0
array.each do |name|
  count += 1 if name.length == 5
end
puts "Number of names exactly 5 letters long: #{count}"
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

#  Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of the artists?
# * How would you print out all the names of the albums?
# * Which artist has the longest name?
# * How would you change all the album titles for every artist to `Greatest Hits`?
# * How would you delete a key-value pair if the artist's name ends in a vowel?

puts 'Artist names:'
best_records.each do |name, _album|
  puts name
end
puts

puts 'Album names:'
best_records.each do |_name, album|
  puts album
end
puts

lengths = []
best_records.each do |name, _album|
  lengths << name.length
end

longest = lengths.each_index.select { |n| lengths[n] == lengths.max }

puts 'Longest artist name:'
longest.each do |index|
  puts best_records.keys[index]
end
puts

best_records.each do |name, _album|
  best_records[name] = 'Greatest Hits'
end
puts best_records
puts

best_records.delete_if { |name, _album| ['a', 'e', 'i', 'o', 'u'].include?(name[name.length - 1]) }
puts best_records
puts


ages = {'Arch'=>89, 'Gretchen'=>93, 'Simone'=>12, 'Daija'=>96, 'Alivia'=>22, 'Serena'=>28, 'Alek'=>3, 'Lula'=>24, 'Christian'=>62, 'Darryl'=>47, 'Otha'=>32, 'Evalyn'=>44, 'Lincoln'=>27, 'Rebeca'=>99, 'Beatrice'=>99, 'Kelton'=>10, 'Zachary'=>18, 'Aurelie'=>91, 'Dell'=>71, 'Lisandro'=>22}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `ages`?
# * How would you print out each key-value pair in the format of `<name> is <age> years old.`?
# * How would you print out every person with odd numbered age?
# * How would you delete everyone under 25 years of age?
# * What is the name and age of everyone with a name greater than or equal to 5 characters?

puts 'Names:'
puts ages.keys
puts

puts 'Names and ages:'
ages.each do |name, age|
  puts "#{name} is #{age} years old."
end
puts

puts 'Odd numbered age entries:'
ages.each do |name, age|
  puts name if age.odd?
end
puts

puts 'Delete people under the age of 25:'
ages.delete_if { |_name, age| age < 25 }
puts ages
puts

puts 'Names 5 letters or longer:'
ages.each do |name, age|
  puts "#{name} is #{age} years old." unless name.length < 5
end
puts

people =
{
  'Alia O\'Conner PhD' => {
         'phone' => '538.741.1841',
       'company' => 'Leuschke-Stiedemann',
      'children' => [
          'Simone',
          'Cindy',
          'Jess'
      ]
  },
           'Ike Haag' => {
         'phone' => '(661) 663-8352',
       'company' => 'Carter Inc',
      'children' => [
          'Joe',
          'Ofelia',
          'Deron'
      ]
  },
       'Brian Heller' => {
         'phone' => '1-288-601-5886',
       'company' => 'O\'Conner Group',
      'children' => [
          'Renee'
      ]
  },
       'Maryse Johns' => {
         'phone' => '218-571-8774',
       'company' => 'Kuhlman Group',
      'children' => [
          'Dominick',
          'Tricia'
      ]
  },
  'Dr. Adela DuBuque' => {
        'phone' => '1-203-483-1226',
      'company' => 'Heidenreich, Nietzsche and Dickinson'
  }
}

# Write Ruby code to find out the answers to the following questions:

# * How would you print out all the names of `people`?
# * How would you print out all the names of `people` and which company they work for?
# * What are the names of all the children of everyone in `people`?
# * What are the names of all the companies that people work for?
# * How would you convert all the phone numbers to the same standard (pick one)?

puts 'Names:'
people.each do |name, _details|
  puts name
end
puts

puts 'Names and Companies:'
people.each do |name, details|
  puts "#{name} works for #{details['company']}"
end
puts

puts 'Children:'
people.each do |_name, details|
  details['children'].each { |child| puts child } unless details['children'].nil?
end
puts

puts 'Companies:'
people.each do |_name, details|
  puts details['company'] unless details['company'].nil?
end
puts

puts 'Reformatted Phone Numbers:'
people.each do |_name, details|
  details['phone'].gsub!(/\W/, '')
  details['phone'].slice!(0) if details['phone'][0] == '1'
  details['phone'] = "#{details['phone'].chars[0..2].join}"\
  "-#{details['phone'].chars[3..5].join}-#{details['phone'].chars[6..8].join}"
  puts details['phone']
end
puts


people =
[
    {
          'Derek Wehner' => {
               'phone' => '588-047-7782',
             'company' => 'Daniel-Carroll',
            'children' => [
                'Phoebe',
                'Gretchen',
                'Wiley'
            ]
        },
           'Ali Koelpin' => {
               'phone' => '1-127-057-0020',
             'company' => 'Rau, Rutherford and Lockman',
            'children' => [
                'Juwan'
            ]
        },
        'Ervin Prohaska' => {
               'phone' => '(393) 630-3354',
             'company' => 'Carter Inc',
            'children' => [
                'Virgil',
                'Piper',
                'Josianne'
            ]
        },
          'Hellen Borer' => {
              'phone' => '1-687-825-0947',
            'company' => 'Maggio, Ferry and Moen'
        }
    },
    {
        'Elinor Johnson' => {
              'phone' => '819.911.5553',
            'company' => 'Pollich Group'
        }
    },
    {
        'Richmond Murray' => {
               'phone' => '1-516-432-2364',
             'company' => 'Sporer and Sons',
            'children' => [
                'Kade',
                'Sage'
            ]
        },
            'Nakia Ferry' => {
               'phone' => '134-079-2237',
             'company' => 'Hamill, O\'Keefe and Lehner',
            'children' => [
                'Rollin'
            ]
        }
    }
]

# Write Ruby code to find out the answers to the following questions:

# * What are the names of everyone in `people`?
# * What are the names of all the children in `people`?
# * How would you create a new hash called `phone_numbers` that has a key of a name and value of a phone number in `people`?
# * How would you create a new hash called `employers` that has a key of a name and a value of a company name in `people`?
# * How would you create a new hash called `children_count` that has a key of a name and a value of the number of children a person has?

puts 'Names:'
people.each do |section|
  section.each do |name, _details|
    puts name
  end
end
puts

puts 'Children:'
people.each do |section|
  section.each do |_name, details|
    details['children'].each { |child| puts child } unless details['children'].nil?
  end
end
puts

phone_numbers = {}
people.each do |section|
  section.each do |name, details|
    phone_numbers[name] = details['phone']
  end
end
puts phone_numbers
puts

employers = {}
people.each do |section|
  section.each do |name, details|
    employers[name] = details['company']
  end
end
puts employers
puts

children_count = {}
people.each do |section|
  section.each do |name, details|
    if details['children'].nil?
      count = 0
    else
      count = details['children'].size
    end
    children_count[name] = count
  end
end
puts children_count
