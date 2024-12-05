Tag ← -⟜1∘((1++`)×¬)=
Split ← {(𝕨Tag𝕩)⊔𝕩}

rules‿orders ← (+`""⊸≡¨)⊸⊔ •file.Lines "data.txt"
rules (•ParseFloat¨'|'⊸Split)¨ ↩
orders (•ParseFloat¨¨·','⊸Split¨ 1⊸↓) ↩

Check ← {o𝕊r: {¬+´o=⊑r ? 1 ; <´o⊐r }}
goods ← {𝕊order: ∧´{𝕊rule: order Check rule }¨ rules}¨⊸/ orders
Center ← (⌊·÷⟜2≠)⊸⊑
s1 ← +´ Center¨ goods


# Reorder ← {f‿t𝕊arr: v←⊑f⌽arr ⋄ v⊸∾⌾(t⊸⌽) 1⊸↓⌾(f⊸⌽) arr }
# BadRules ← {𝕊order: {𝕊rule: ¬order Check rule }¨⊸/ rules}
# bads ← {𝕊order: ¬∧´{𝕊rule: order Check rule }¨ rules}¨⊸/ orders

# Order ← {𝕊order:
#   order {br𝕊accOrder: (accOrder⊐br) Reorder accOrder}´ BadRules order
# }⍟{0≠≠BadRules 𝕩}

# •Show s2 ← +´ Center¨ Order¨ bads
