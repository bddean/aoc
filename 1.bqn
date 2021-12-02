u←•Import "u.bqn"
depths←u.Dec¨ •file.Lines "in/1"
•Out "Q1.1:"
P1←{+´<´˘2↕ 𝕩}
•Show P1 depths
•Out "Q1.2:"
•Show P1 +´˘ 3↕depths
