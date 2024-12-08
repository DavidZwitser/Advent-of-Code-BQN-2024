d ← •file.Lines "data.txt"

upper ← 'A'⊸+¨ ↕26
lower ← 32⊸+ upper
numbers ← '0'⊸+¨ ↕10
all ← upper∾lower∾numbers

# •Show {𝕊obj: }¨ all
