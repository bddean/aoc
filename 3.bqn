# Binary digits to number.
B2N ← {d←⌽𝕩 ⋄ +´d×2⋆↕≠d}

bits←'1'=•file.Lines "in/3"
Mode←(+´≥(+´¬)) # column-wise binary mode
•Out "Q3.1:"
•Show ×○B2N⟜¬ Mode bits

Rate←{r‿i 𝕊 bs: {
	1=≠bs
		? ⊑bs
		; ⟨r, i+1⟩ Rate /⟜bs r= =⟜Mode i⊸⊑¨bs
}}
•Out "Q3.2:"
•Show ×○B2N´ {𝕩‿0 Rate bits}¨1‿0
