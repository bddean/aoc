u←•Import "u.bqn"
depths←u.Dec¨ •file.Lines "in/1"
P1←{+´<´˘2↕ 𝕩}
1.1 u.Ans P1 depths
1.2 u.Ans P1 +´˘ 3↕depths
