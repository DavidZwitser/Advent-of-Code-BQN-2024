Tag ← -⟜1∘((1++`)×¬)=
Split ← {(𝕨Tag𝕩)⊔𝕩}     # Group based on tags where ¯1 is dropped

d ← •file.Lines "data.txt"
puzzles ← •ParseFloat⚇1˘ {(1⊸↓' '⊸Split)⌾(1⊸⊑)}˘ >':'⊸Split¨ d
t ← ⊏puzzles

{𝕊s‿n:
  # •Show (↕2)⊔3
  •Show =⌜˜↕2⋆4
  # {t𝕊c: t(×‿+)c}´•_while_  n
} t
