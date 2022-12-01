# Utilities.

# Parse a decimal natural number (from bqncrate).
Dec⇐{
	digits←𝕩-'0'
	10⊸×⊸+˜´∘⌽ digits
}

# View int matrix compactly.
View⇐{•Show ⊏⟜".12345789"¨𝕩}

GroupMask⇐(-⟜1)∘(+`∘(»⊸<)⊸×)⊸⊔
Numbers⇐Dec¨∘(∊⟜('0'+↕10)⊸GroupMask)⚇1

# Display the answer
Ans⇐{day 𝕊 result: {
	result≡@ ? @ ; # Display nothing for @
	•Out "D"∾(•Repr day)∾": "∾•Repr result
}}

# Split string 𝕩, dropping the delimiter 𝕨
Split⇐{d 𝕊 s:
	#g← {d⊸≡˘ (≠d)↕ ∾⟜@ 𝕩} s
	g←d⊸≡¨(≠d)⊸↑¨↓s
	g⊔s
	#g≍s
}
