PlayerShoots:

if (GetPointerPressed() or GetRawKeyPressed(32)) and laserFired = 0
	laserFired = 1
	PlaySound(laser)
	laserx = GetSpriteX(1) + playerWidth/2 - GetSpriteWidth(2)/2
	lasery = GetSpriteY(1) - GetSpriteHeight(2)
endif
	
if laserFired = 1
	lasery = lasery - 15
endif

if lasery < -GetSpriteHeight(2)
	laserFired = 0
endif

SetSpritePosition(2, laserx, lasery)

Return
