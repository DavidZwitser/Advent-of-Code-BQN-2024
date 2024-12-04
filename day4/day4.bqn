d ← >•file.Lines "data.txt"

Rots ← ⌽∘⍉⍟(↕4)

dias ← +´+´˘+´ ("XMAS"⊸≡ 0‿0⊸⍉)¨¨ <⎉2¨ 4‿4⊸↕¨ Rots d
sides ← +´⥊> "XMAS"⊸≡¨¨ <⎉1¨ 1‿4⊸↕¨ Rots d
s1 ← dias + sides

s2 ← +´ +´˘ 2= +´¨ ("MAS"⊸≡ 0‿0⊸⍉)¨¨ Rots¨ <⎉2 3‿3⊸↕  d

•Show s1‿s2
