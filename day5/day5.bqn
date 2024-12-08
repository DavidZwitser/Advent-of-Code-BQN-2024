Tag ← -⟜1∘((1++`)×¬)=
Split ← {(𝕨Tag𝕩)⊔𝕩}

rules‿orders ← (+`""⊸≡¨)⊸⊔ •file.Lines "data.txt"
rules (•ParseFloat¨'|'⊸Split)¨ ↩
orders (•ParseFloat¨¨·','⊸Split¨ 1⊸↓) ↩

# •SHow rules
Order ← ⍒{∊⟜(>rules)⋈}⌜˜

Check ← {o𝕊r: {¬+´o=⊑r ? 1 ; <´o⊐r }}
goods ← {𝕊order: ∧´{𝕊rule: order Check rule }¨ rules}¨⊸/ orders
Center ← (⌊·÷⟜2≠)⊸⊑
s1 ← +´ Center¨ goods

BadRules ← {𝕊order: {𝕊rule: ¬order Check rule }¨⊸/ rules}
bads ← {𝕊order: ¬∧´{𝕊rule: order Check rule }¨ rules}¨⊸/ orders

reorders ← Order¨ bads
•Show s2 ← +´ Center¨ reorders ⊏¨ bads
