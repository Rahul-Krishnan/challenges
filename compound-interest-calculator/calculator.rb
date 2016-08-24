# The output of the program should look as follows:

# What is the amount being invested: 1000
# What is the annual interest rate (percentage): 10
# How many years will it accrue interest: 25

# The final value will be $10834.71 after 25 years.

# ====================
# YOUR CODE GOES HERE
# ====================

# FV = PV (1+i)**n

print "What is the amount being invested: "
pv = gets.chomp.to_f
print "What is the annual interest rate (percentage): "
i = gets.chomp.to_f/100
print "How many years will it accrue interest: "
n = gets.chomp.to_i
puts "\n"
printf("The final value will be $%.2f after %d year#{"s" unless n ==1}.\n", (pv * (1+i)**n), n)
