# Utilities.

# Parse a decimal natural number (from bqncrate).
Dec⇐{
	digits←𝕩-'0'
	10⊸×⊸+˜´∘⌽ digits
}

# Display the answer
Ans⇐{day 𝕊 result:
	•Out "D"∾(•Repr day)∾": "∾•Repr result
}
