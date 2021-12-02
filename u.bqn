# Utilities.

# Parse a decimal natural number (from bqncrate).
Dec⇐{
	digits←𝕩-'0'
	10⊸×⊸+˜´∘⌽ digits
}
