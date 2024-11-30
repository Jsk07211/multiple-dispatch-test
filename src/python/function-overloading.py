# https://www.geeksforgeeks.org/python-method-overloading/
# Python allows for the overloading of functions, but only uses the latest definition

def sum(a, b):
    return a + b

print(f"sum(a, b): {sum(1,2)}")

# Overwrites previous definition
def sum(a, b, c):
    return a + b + c

print(f"sum(a, b, c): {sum(1, 2, 3)}")
# print(f"sum(a, b): {sum(1,2)}")

# This is not function overloading but allows for variable number of parameters I guess
def sum(a, b, c=None):
    if c == None:
        return a + b
    else:
        return a + b + c
    
print(f"sum(a, b, c): {sum(1, 2, 3)}")
print(f"sum(a, b): {sum(1, 2)}")