import matplotlib.pyplot as plt

# Simple LCG implementation
def lcg(modulus, a, c, seed, n):
    """Generate a sequence of random numbers."""
    numbers = []
    for _ in range(n):
        seed = (a * seed + c) % modulus
        numbers.append(seed / modulus)
    return numbers

# Parameters for the LCG (chosen for demonstration, not for quality)
modulus = 25656767
a = 1103515245
c = 12345
seed = 42
n = 1024

# Generate numbers
numbers = lcg(modulus, a, c, seed, n)

# Plotting the numbers to visualize patterns
plt.figure(figsize=(8, 8))
plt.scatter(numbers[:-1], numbers[1:], s=1)
plt.title('2D Plot of Consecutive LCG Numbers')
plt.xlabel('Xn')
plt.ylabel('Xn+1')
plt.show()
