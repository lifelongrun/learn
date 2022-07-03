# 🚨 Don't change the code below 👇
height = input("enter your height in m: ")
weight = input("enter your weight in kg: ")
# 🚨 Don't change the code above 👆

#Write your code below this line 👇
body_mass_index = float(weight) / (float(height) * float(height))
print(int(body_mass_index))