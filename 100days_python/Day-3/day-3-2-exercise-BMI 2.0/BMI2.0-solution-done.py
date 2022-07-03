# 🚨 Don't change the code below 👇
height = float(input("enter your height in m: "))
weight = float(input("enter your weight in kg: "))
# 🚨 Don't change the code above 👆

#Write your code below this line 👇
bmi2 = round(weight/height**2)

if bmi2 < 18.5 :
    print(f"Your BMI is {bmi2}, you are underweight.")
elif bmi2 < 25 :
    print(f"Your BMI is {bmi2}, you have a normal weight.")
elif bmi2 < 30 :
    print(f"Your BMI is {bmi2}, you are slightly overweight.")
elif bmi2 < 35 :
    print(f"Your BMI is {bmi2}, you are obese.")
else :
    print(f"Your BMI is {bmi2}, you are clinically obese.")