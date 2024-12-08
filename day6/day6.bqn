t ← >•file.Lines "data.txt"

Traverse ← {getRes𝕊t:
  pos ← 55‿86
  ori ← [¯1‿0,0‿1,1‿0,0‿¯1]
  visited ← ⋈pos
  timeout‿steps ← 8000‿0

  Show ← {𝕊: •SHow 20‿50⊸↑(pos-10‿20)↓ '💖'⌾(pos⊸⊑)t }#⋄ •Show visited}# ⋄ •Delay 0.001}
  Step ← {𝕊: ∧´ (0‿0⊸≤ ∧(≢t)⊸>) next←pos+⊏ori ? {timeout>steps ?
      {'#'≡next⊑t ? ori 1⊸⌽↩ ; {getRes ? steps +↩1; visited ∾↩ ⋈next} ⋄ pos ↩ next}
    ; 1} ; 0
  }

  res ← Step •_while_ {(𝕩≢0)∧(𝕩≢1)} t
  {getRes ? res ; ∊⊸/ >visited }
}

•Show s1 ← ⊑≢ stepped ← 0 Traverse t

tests ← {'#'⌾(𝕩⊸⊑) t}˘ 1↓stepped
c‿ts ← 0‿(•FMT⊑≢tests)

•Show +´ {•Show ts ∾ "/" ∾ •FMT c ⋄ c +↩1 ⋄ 1 Traverse 𝕩} ˘ tests
