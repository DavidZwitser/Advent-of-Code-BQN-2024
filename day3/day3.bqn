d ← •file.Chars "data.txt"

masks ← {𝕊l‿r: "mul(" ∾ (l/⋈'⍎') ∾ ',' ∾ (r/⋈'⍕') ∾ ")"}¨ ⥊∾⌜˜ 1+↕3

Nmbr ← (≥⟜0∧≤⟜9) -⟜'0'
MakeCheck ← {𝕊mask: {(𝕩≡'⍕')∨(𝕩≡'⍎') ? nmbr ; 𝕩⊸=}¨ mask}

GetNmbr ← {chunk𝕊mask: •ParseFloat¨ {𝕩⊸/chunk}¨ mask⊸=¨ "⍎⍕"}

Match ← {string𝕊mask:
  slice←(≠mask)↕string
  {𝕊chunk: ∧´ (MakeCheck mask) {𝕎𝕩}¨ chunk ? chunk ⋈ mask ; 0  }¨ <˘slice
}

s1 ← +´ ×´¨ GetNmbr´¨ {0≢𝕩}¨⊸/ ∾ d⊸Match¨ masks

Combine ← {l←⊑∨≠¨𝕩 ⋄ {𝕩≡0?𝕨;𝕩}¨´ l⊸↑¨𝕩}

muls ← {𝕩≢0? ×´ GetNmbr´ 𝕩;0}¨ Combine d⊸Match¨ masks
dos ← {𝕩≢0?'a';0}¨ d Match "do()"
donts ← {𝕩≢0?'d';0}¨ d Match "don't()"

cleanList ← {𝕩≢0}¨⊸/ Combine muls‿dos‿donts

active ← 1
•Show s2 ← {
  'a'𝕊total: active↩1 ⋄ total;
  'd'𝕊total: active↩0 ⋄ total;
  v𝕊total: total + v × active
}´ cleanList
