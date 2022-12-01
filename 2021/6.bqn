u←•Import "u.bqn"
ages←9↑≠¨⊔ u.Numbers •FChars "in/6"
Gen←{	(«𝕩)+(⊑𝕩)×/⁼ 6‿8 }
6.1 u.Ans +´ Gen⍟80 ages  #P1
6.2 u.Ans +´ Gen⍟256 ages 
