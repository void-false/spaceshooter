MakeStars:
for i = 1 to 100
	CreateSprite(i + 5, CreateImageColor(Random(1, 255), Random(1, 255), Random(1, 255), Random(100, 255)))
	SetSpriteSize(i + 5, Random(1, 3), Random(1, 3))
	SetSpritePosition(i + 5, Random(1, 768), Random(1, 1024))
next i
Return

MoveStars:
for i = 1 to 100
	stary = GetSpriteY(i + 5) + 1
	if stary > 1024
		stary = 0
	endif
	SetSpritePosition(i + 5, getspritex(i + 5), stary)
next i
Return
