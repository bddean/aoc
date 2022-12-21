u←•Import "u.bqn"
# TODO: Use ⥊ to partition
I←⊑∘(∊/⊣)´ # Intersect
lines←•FLines "in/3"
sacks←  {
	𝕩⊔˜(↕≠𝕩)<2÷˜≠𝕩
}¨ lines
shared←I¨sacks

P←{ (𝕩≥'a') # Priority
	? 1+𝕩-'a'
	; 27+𝕩-'A'}

3.1 u.Ans +´P¨shared

gi←⌊3÷˜↕≠lines
groups←gi⊔lines
3.2 u.Ans +´ P¨⊑¨(∊/⊣)´¨ groups
