#Dataset
voter_data = [
  {first_name: "Jon", last_name: "Smith", age: 25, income: 50000, household_size: 1, gender: "Male", education: "College"},
  {first_name: "Jane", last_name: "Davies", age: 30, income: 60000, household_size: 3, gender: "Female", education: "High School"},
  {first_name: "Sam", last_name: "Farrelly", age: 32, income: 80000, household_size: 2, gender: "Unspecified", education: "College"},
  {first_name: "Joan", last_name: "Favreau", age: 35, income: 65000, household_size: 4, gender: "Female", education: "College"},
  {first_name: "Sam", last_name: "McNulty", age: 38, income: 63000, household_size: 3, gender: "Male", education: "College"},
  {first_name: "Mark", last_name: "Minahan", age: 48, income: 78000, household_size: 5, gender: "Male", education: "High School"},
  {first_name: "Susan", last_name: "Umani", age: 45, income: 75000, household_size: 2, gender: "Female", education: "College"},
  {first_name: "Bill", last_name: "Perault", age: 24, income: 45000, household_size: 1, gender: "Male", education: "Did Not Complete High School"},
  {first_name: "Doug", last_name: "Stamper", age: 45, income: 75000, household_size: 1, gender: "Male", education: "College"},
  {first_name: "Francis", last_name: "Underwood", age: 52, income: 100000, household_size: 2, gender: "Male", education: "College"}
]

#Instantiate variables
age_sum = 0.0
income_sum = 0.0
size_sum = 0.0
f_sum = 0.0
m_sum = 0.0
u_sum = 0.0
college_sum = 0.0
hs_sum = 0.0
no_hs_sum = 0.0

entry_count = 0

#Calculate Category Sums
voter_data.each do |entry|
  age_sum += entry[:age]
  income_sum += entry[:income]
  size_sum += entry[:household_size]
  if entry[:gender] == "Female"
    f_sum += 1
  elsif entry[:gender] == "Male"
    m_sum += 1
  else
    u_sum += 1
  end
  if entry[:education] == "College"
    college_sum += 1
  elsif entry[:education] == "High School"
    hs_sum += 1
  else
    no_hs_sum += 1
  end
  entry_count +=1
end

#Calculate Averages and Percentages
avg_age = age_sum / entry_count
avg_income = income_sum / entry_count
avg_size = size_sum / entry_count
f_pct = f_sum / entry_count * 100
m_pct = m_sum / entry_count * 100
u_pct = u_sum / entry_count * 100
college_pct = college_sum / entry_count * 100
hs_pct = hs_sum / entry_count * 100
no_hs_pct = no_hs_sum / entry_count * 100

#Output
puts "Average age: #{avg_age}"
puts "Average income: #{avg_income}"
puts "Average household size: #{avg_size}"
puts "Female Percentage: #{f_pct}"
puts "Male Percentage: #{m_pct}"
puts "Unspecified Gender Percentage: #{u_pct}"
puts "Percent of those who obtained a college education level: #{college_pct}"
puts "Percent of those who obtained a high school education level: #{hs_pct}"
puts "Percent of those that did not finish high school: #{no_hs_pct}"
