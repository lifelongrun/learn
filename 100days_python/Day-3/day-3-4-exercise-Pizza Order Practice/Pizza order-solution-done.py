# 🚨 Don't change the code below 👇
print("Welcome to Python Pizza Deliveries!")
size = input("What size pizza do you want? S, M, or L ")
add_pepperoni = input("Do you want pepperoni? Y or N ")
extra_cheese = input("Do you want extra cheese? Y or N ")
# 🚨 Don't change the code above 👆

#Write your code below this line 👇
total = 0
if size == "S" :
    total += 15
    if add_pepperoni == "Y" :
        #对于S，加收2美元
        total += 2
elif size == "M" :
    total += 20
    #对于M或L,加收3美元
    if add_pepperoni == "Y" :
        total += 3
else:
#对于L而言：
    total += 25
    if add_pepperoni == "Y" :
        total += 3
#对于任何规格，加收1美元
if extra_cheese == "Y" :
    total += 1
print(f"Your final bill is: ${total}.")

