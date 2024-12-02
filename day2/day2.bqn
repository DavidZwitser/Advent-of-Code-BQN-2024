# Get a ¯1 for the chars matching 𝕨 and a unique id for each group seperated by that char
Tag ← -⟜1∘((1++`)×¬)=
Split ← {(𝕨Tag𝕩)⊔𝕩}     # Group based on tags where ¯1 is dropped

reports ← •ParseFloat⚇1 ' '⊸Split⚇1 •file.Lines "data.txt"

Hs ← >⟜0 ∧ ≤⟜3          # high safe
Ls ← Hs-                # low safe (same but for the negative direction)
Safe ← ∧´∘Hs ∨ ∧´∘Ls    # total safe (either all high safe or all low safe)

Deltas ← -˜´˘ 2⊸↕       # deltas of all neighbour pairs

# Sum reports with deltas that are within bounds
s1 ← +´ Safe¨ Deltas¨ reports

# For each index (¨↕≠), return a copy where the value on that index is dropped
AllOnedrops ← {𝕊v: {1⊸↓⌾(𝕩⊸⌽) v}¨ ↕≠v}

# If a report is unsafe, try its dropped versions
s2 ← +´ {¬ Safe Deltas 𝕩 ? ∨´ Safe¨ Deltas¨ AllOnedrops 𝕩 ; 1}¨ reports

•Show s1‿s2
