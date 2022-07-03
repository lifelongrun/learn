#If the bill was $150.00, split between 5 people, with 12% tip.

#Each person should pay (150.00 / 5) * 1.12 = 33.6
#Format the result to 2 decimal places = 33.60

#Tip: There are 2 ways to round a number. You might have to do some Googling to solve this.💪

#Write your code below this line 👇
total_bill = float(input("Welcome to the tip calculator!\nWhat was the total bill? $"))
percentage_tip = float(input("What percentage tip would you like to give? 10, 12, or 15 ?"))
people_number = float(input("How many people to split the bill ?"))
each_person_should_pay = (total_bill * (1 + percentage_tip/100 )) / people_number
pay_two_decimal_places = round(each_person_should_pay,2)
print(f"Each person should pay: $ {pay_two_decimal_places}")