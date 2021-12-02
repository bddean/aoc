u←•Import "u.bqn"
# Parse input.
lines←•file.Lines "in/2"
raw_fields←{s←' '=𝕩⋄(s-˜»+`s)⊔𝕩}¨lines
fields←{⟨𝕨⟩∾⟨u.Dec 𝕩⟩}´¨raw_fields

travel←{
	"forward"‿n: n‿0
;	"down"‿n:    0‿n
;	"up"‿n:      0‿(-n)
}¨fields
•Out "Q2.1:"
•Show ×´+´travel

horiz‿vert‿aim ← 0‿0‿0 { h‿v‿a 𝕊 field : {
	"forward"‿n: (h+n)‿(v+a×n)‿a
;	"down"‿n:    h‿v‿(a+n)
;	"up"‿n:      h‿v‿(a-n)
} field}˜´ ⌽ fields
•Out "Q2.2:"
•Show horiz×vert
