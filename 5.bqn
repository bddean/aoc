u ← •Import "u.bqn"

lines←2‿2⊸⥊¨u.Numbers •file.Lines "in/5"
size←1+⌈˝∾lines

Extent←{
	len←1+⌈´ | -˝𝕩
	dir←×∘-˝⌽𝕩
	(0⊏𝕩)⊸+¨ dir⊸×¨↕len
}

Solve←{+´1=⊒∾Extent¨ 𝕩}

# "For now, only consider horizontal and vertical lines: lines where either
# x1 = x2 or y1 = y2."
straightlines ← (∨´=˝)¨⊸/ lines
4.1 u.Ans Solve straightlines

4.2 u.Ans Solve lines
