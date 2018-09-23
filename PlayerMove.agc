PlayerMove:
playerx = playerx + GetDirectionX() * 12
playery = playery + GetDirectionY() * 12

if playerx < 0
	playerx = 0
elseif playerx > screenWidth - playerWidth
	playerx = screenWidth - playerWidth
endif

if playery > screenHeight - playerHeight
	playery = screenHeight - playerHeight
elseif playery < 0
	playery = 0
endif
	
SetSpritePosition(1, playerx, playery)

return
