CheckCollision:
if GetSpriteCollision(2, 3)
	PlaySound(explosion)
	laserFired = 0
	laserx = -100
	score = score + 3 + Abs(enemyy) / 10
	SetSpritePosition(3, Random(1, GetVirtualWidth() - GetSpriteWidth(3)), -GetSpriteHeight(3))
endif

Return
