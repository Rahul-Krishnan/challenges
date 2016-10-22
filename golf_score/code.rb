#Scores
game_scores = [
  {par: 5, score: 7},
  {par: 4, score: 5},
  {par: 3, score: 3},
  {par: 4, score: 4},
  {par: 4, score: 4},
  {par: 3, score: 2},
  {par: 4, score: 5},
  {par: 5, score: 5},
  {par: 4, score: 5},
  {par: 5, score: 7},
  {par: 4, score: 4},
  {par: 4, score: 4},
  {par: 3, score: 3},
  {par: 4, score: 5},
  {par: 4, score: 5},
  {par: 4, score: 4},
  {par: 3, score: 3},
  {par: 5, score: 6},
]

#Add up scores
total = 0
par_sum = 0
game_scores.each do |par_score|
  total += par_score[:score]
  par_sum += par_score[:par]
end

#Performance Calc
performance = total - par_sum

#Output
print "Hi there, your score is #{total}, which is "
if performance > 0
  puts "#{performance} over par."
elsif performance < 0
  puts "#{-performance} under par."
else
  puts "par for the course."
end
