# 🚨 Don't change the code below 👇
print("Welcome to the Love Calculator!")
name1 = input("What is your name? \n")
name2 = input("What is their name? \n")
# 🚨 Don't change the code above 👆

#Write your code below this line 👇
true_total = 0
love_total = 0
#Joint two strings into one signle string
name_string = name1.lower() + name2.lower()

#Below is Ture score
true_total = name_string.count("t")
#count() will tanslate the upper into lower one.
true_total += name_string.count("r")
true_total += name_string.count("u")
true_total += name_string.count("e")
#Below is Love score
love_total = name_string.count("l")
love_total += name_string.count("o")
love_total += name_string.count("v")
love_total += name_string.count("e")

love_score = int(str(true_total) + str(love_total))

if love_score < 10 or love_score > 90 :
    print(f"Your score is {love_score}, you go together like coke and mentos.")
elif love_score > 40 and love_score < 50 :
    print(f"Your score is {love_score}, you are alright together.")
else :
    print(f"Your score is {love_score}.")

