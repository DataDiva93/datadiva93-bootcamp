
# Lab: Learn Python by Building

## Goal:
Build two mini Python projects to learn input, variables, and 
if-statements:
- Mad Libs Game
- Simple Calculator

---

## Step 1: Set Up

Make sure you’re inside the correct folder:

cd ~/datadiva93-bootcamp/02-python-basics/project

---

## Step 2: Create a Mad Libs Game

Create a file called madlibs.py and paste the following:

print("Let's play Mad Libs!")

noun = input("Give me a noun: ")
verb = input("Now a verb: ")
place = input("Name a place: ")

print(f"Today I went to the {place} and saw a {noun} trying to {verb}!")

Run your file:

python3 madlibs.py

---

## Step 3: Create a Simple Calculator

Create a file called calculator.py and paste the following:

print("Simple Calculator")

num1 = float(input("Enter first number: "))
op = input("Choose operation (+, -, *, /): ")
num2 = float(input("Enter second number: "))

if op == "+":
    print(num1 + num2)
elif op == "-":
    print(num1 - num2)
elif op == "*":
    print(num1 * num2)
elif op == "/":
    if num2 != 0:
        print(num1 / num2)
    else:
        print("Cannot divide by zero.")
else:
    print("Invalid operation")

Run your file:

python3 calculator.py

---

## Step 4: Stretch Goals

- Ask the user if they want to play again (use a while loop)
- Add more variables to the Mad Libs
- Add error handling to calculator input
- Format output with .2f for decimals

---

## ✅ Done!

You’ve written two working Python scripts. Nice job!


