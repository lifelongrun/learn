# ð¨ Don't change the code below ð
print("Welcome to Python Pizza Deliveries!")
size = input("What size pizza do you want? S, M, or L ")
add_pepperoni = input("Do you want pepperoni? Y or N ")
extra_cheese = input("Do you want extra cheese? Y or N ")
# ð¨ Don't change the code above ð

#Write your code below this line ð
total = 0
if size == "S" :
    total += 15
    if add_pepperoni == "Y" :
        #å¯¹äºSï¼å æ¶2ç¾å
        total += 2
elif size == "M" :
    total += 20
    #å¯¹äºMæL,å æ¶3ç¾å
    if add_pepperoni == "Y" :
        total += 3
else:
#å¯¹äºLèè¨ï¼
    total += 25
    if add_pepperoni == "Y" :
        total += 3
#å¯¹äºä»»ä½è§æ ¼ï¼å æ¶1ç¾å
if extra_cheese == "Y" :
    total += 1
print(f"Your final bill is: ${total}.")

