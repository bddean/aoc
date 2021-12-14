u←•Import "u.bqn"
nums← u.Numbers •FChars "in/7"
med← (≠÷2˙)⊸⊑ ∧nums
•Show "P1"
7.1 u.Ans +´|nums-med

# Brute force. TODO: Find nicer solution.
7.2 u.Ans ⌊´+´¨{2÷˜(⊢+×˜)𝕩}¨¨ |(nums⊸-)¨ (⌊´+↕∘(⌈´)) nums
