d ← •file.Lines "data.txt"

l1 ← •ParseFloat¨ 5⊸↑¨ d
l2 ← •ParseFloat¨ 5⊸↑⌾⌽¨ d

s1 ← +´ l2 (|-)○∧ l1
s2 ← +´ l1 × +˝ l2 =⌜ l1

•Show s1‿s2
