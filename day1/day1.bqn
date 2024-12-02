d ← •file.Lines "./data.txt"

l1 ← •ParseFloat¨ 5⊸↑¨ d    # List 1: Grab first 5 chars for each line
l2 ← •ParseFLoat¨ 5⊸↑⌾⌽¨ d  # List 2: Grab last 5 chars for each line

# Sort both lists assending, subtract them to get the deltas.
# Make that dalta absolute and sum the deltas.
s1 ← +´ l2 (|-)○∧ l1

# Check each item in l1 for equality to every item in l2 and sum those matches to get an occurence count
# Multiply the original l1 with those matches and sum that result
s2 ← +´ l1 × +˝ l2 ≡⌜ l1

•Show s1‿s2
