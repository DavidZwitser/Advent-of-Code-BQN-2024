Tag ← -⟜1∘((1++`)×¬)=
Split ← {(𝕨Tag𝕩)⊔𝕩}

reports ← •ParseFloat⚇1 ' '⊸Split¨ •file.Lines "data.txt"

Hs ← >⟜0 ∧ ≤⟜3
Ls ← Hs-
Safe ← ∧´∘Hs ∨ ∧´∘Ls

Delta ← -˜´˘ 2⊸↕

s1 ← +´ Safe¨ Delta¨ reports

AllOnedrops ← {𝕊l: {1⊸↓⌾(𝕩⊸⌽) l}¨ ↕≠l}
s2 ← +´ {¬ Safe Delta 𝕩 ? ∨´ Safe¨ Delta¨ AllOnedrops 𝕩 ; 1}¨ reports

•Show s1‿s2
