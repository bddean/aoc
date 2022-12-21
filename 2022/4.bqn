u←•Import "u.bqn"
assignments←⌽‿2‿2 ⥊ u.Numbers •FChars "in/4"
4.1 u.Ans +´((≠´ ∨ ≡⟜0‿0)∘×∘-˝)˘assignments
4.2 u.Ans +´(0‿1⊸⊑ ≥ 1‿0⊸⊑)∘∧˘assignments
