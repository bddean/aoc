# Where did I spend my time?
# - Parsing is a pain.
# - Inability to inspect/visualize parts of the state easily.
# - Fiddling with structure & being confused by output.
# - abstractions that didn't really fit (early iteration of Score fn)

u←•Import "./u.bqn"
lines←•Flines "in/4"
#4.1 u.Ans @ {
•Show {
	# This parsing takes up a lot of time...
	order←•BQN "⟨"∾(⊑lines)∾"⟩" # Unsafe!
	boards←{•BQN '⟨'∾ ∾⟜'⟩' 𝕩+((','-𝕩)×𝕩=' ')}¨¨1↓¨1↓(+`⟨⟩⊸≡¨)⊸⊔ 1↓lines
	boards↩>¨boards
	stages←boards⊸(∊⚇1)¨ ↑ order
	Bingo←{∨´(5 = (⌈´+˝)˘) (⊢≍⍉) 𝕩}⚇1
	results←Bingo stages
	i←⊑⊐⟜1(∨´=1˙)¨results
	Score←{board 𝕊 𝕩:
		marked←board∊⚇1 𝕩↑order
		draw←⊑¯1↑𝕩↑order
		•Show "board"‿board‿marked
		•Show "sum"‿(>board×¬marked)‿(+´⥊>board×¬marked)
		•Show "draw"‿draw
		draw × +´⥊>board×¬marked
	}
	# p1
	#results (i⊏results)/boards) Score i
	#•Show ⍉(↕≠)⊸≍ +´¨results

	i↩⊑(⊢⊐⌈´) +´¨results # exp 85 (real)
	•Show i
	# Blahh gross
	(((i-1)⊏¬results)/boards) Score i
}
#4.2 u.Ans {
#	@
#}
