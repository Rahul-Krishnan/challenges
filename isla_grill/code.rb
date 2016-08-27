#food cost
dinner_total = 178
tip = 20

#output
printf("You should tip %.2f.\n", dinner_total * tip.to_f/100)
printf("The total bill is %.2f.\n", dinner_total * (1 + tip.to_f/100))
