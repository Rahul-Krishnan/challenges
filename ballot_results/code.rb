#build vote results
vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

### put your code here
# Instantiate variables
precint_one_votes = 0
mary_sue_votes = 0
sally_jane_votes = 0
billy_joe_votes = 0

#Precinct 1 total votes
vote_results[0].each do |results|
  precint_one_votes += results
end

#Precinct 4 winner
precinct_four_high_vote = vote_results[3].max
precinct_four_winner = candidates[vote_results[3].index(precinct_four_high_vote)]

#Add up each candidate's votes
4.times do |precinct_index|
  mary_sue_votes += vote_results[precinct_index][0]
  sally_jane_votes += vote_results[precinct_index][1]
  billy_joe_votes += vote_results[precinct_index][2]
end

#Add up all the votes
total_votes = mary_sue_votes + sally_jane_votes + billy_joe_votes

#Figure out overall winner
if mary_sue_votes > sally_jane_votes && mary_sue_votes > billy_joe_votes
  winner = "Mary Sue"
elsif sally_jane_votes > billy_joe_votes
  winner = "Sally Jane"
else
  winner = "Billy Joe"
end

#Output
puts "#{precint_one_votes} people voted in Precinct 1"
puts "#{precinct_four_winner} won Precinct 4"
puts "Mary Sue got #{mary_sue_votes} votes"
puts "Billy Joe got #{billy_joe_votes} votes"
puts "Sally Jane got #{sally_jane_votes} votes"
puts "Total number of votes: #{total_votes}"
puts "\nCongratulations to #{winner}, our overall winner!"
