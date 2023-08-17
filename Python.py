
# Word Scramble Generator

from itertools import permutations

def generate_combinations(word):
    combinations = []
    for length in range(5, len(word) + 1):
        perms = permutations(word, length)
        combinations.extend(''.join(perm) for perm in perms)
    return combinations

input_word = "accent"
combinations_list = generate_combinations(input_word)
print(combinations_list)
