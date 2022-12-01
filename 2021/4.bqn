u←•Import "./u.bqn"
lines←•Flines "in/s4"
order←u.Numbers ⊑lines
boards← ∘‿5‿5 ⥊∾ u.Numbers¨1↓lines
stages←boards⊸∊¨ ↑ order
Bingo←{∨´(5 = (⌈´+˝)˘) (⊢≍⍉) 𝕩}⎉2
results←Bingo¨ stages
Score←{board 𝕊 𝕩:
	marked←board∊⚇1 𝕩↑order
	draw←⊑¯1↑𝕩↑order
	draw × +´⥊>board×¬marked
}
4.1 u.Ans {
	i←⊑⊐⟜1(∨´=1˙)¨results
	((i⊏results)/boards) Score i
}

4.2 u.Ans {
	i←⊑(⊢⊐⌈´) +´¨results # exp 85 (real)
	(((i-1)⊏¬results)/boards) Score i
}
