# Binary digits to number.
u←•Import "./u.bqn"
B2N ← {d←⌽𝕩 ⋄ +´d×2⋆↕≠d}

bits←'1'=•file.Lines "in/3"
Mode←(+´≥(+´¬)) # column-wise binary mode
3.1 u.Ans ×○B2N⟜¬ Mode bits

Rate←{r‿i 𝕊 bs: {
	1=≠bs
		? ⊑bs
		; ⟨r, i+1⟩ Rate /⟜bs r= =⟜Mode i⊸⊑¨bs
}}
3.2 u.Ans ×○B2N´ {𝕩‿0 Rate bits}¨1‿0
