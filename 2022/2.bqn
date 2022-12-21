u←•Import "u.bqn"
codes ← ∘‿2 ⥊ ¬∘∊⟜(@+⟨10,32⟩)⊸u.GroupMask •FChars "in/2"
guide ←  ⊑¨-⟜'A' ⍉ ('A'-'X')⊸+⌾(⊏⌽) ⍉ codes # This just converts `codes' to numbers.
Score← { 0‿2: 0; 2‿0: 6; 3 × (<´+≤´)𝕩 }
Game←{ 𝕊 matches :
	bonus ← 1+ 1⊏⍉𝕩
		+´ bonus + Score˘matches
}
2.1 u.Ans Game guide
2.2 u.Ans Game {𝕊 op‿result:
	play←result⊑ ⟨
	  	3|op-1,# lose
	  	op,    # draw
	  	3|op+1 # win
  	⟩
  	op‿play
}˘guide
