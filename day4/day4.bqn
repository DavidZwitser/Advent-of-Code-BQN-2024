d ← >•file.Lines "data.txt"

Rots ← ⌽∘⍉⍟(↕4)

straights ← +´+´˘+´ "XMAS"⊸⍷¨ Rots d
diagnials ← +´ ⥊>"XMAS"⊸≡¨¨ 0‿0⊸⍉¨¨ <⎉2¨ 4‿4⊸↕¨ Rots d
s1 ← straights + diagnials

s2 ← +´+´˘ 2⊸≡¨ +´¨ "MAS"⊸≡¨¨ 0‿0⊸⍉¨¨ Rots¨ <⎉2 3‿3⊸↕  d

•Show s1‿s2
