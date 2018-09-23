loader:
LoadImage(1, "player.png")
CreateSprite(1, 1)
playerx = GetVirtualWidth() / 2 - GetSpriteWidth(1) / 2
playery = GetVirtualHeight() - GetSpriteHeight(1)
SetSpritePosition(1, playerx, playery)

LoadImage(2, "laser.png")
CreateSprite(2, 2)
SetSpritePosition(2, laserx, lasery)

LoadImage(3, "enemy.png")
CreateSprite(3, 3)
SetSpritePosition(3, Random(1, GetVirtualWidth() - GetSpriteWidth(3)), -GetSpriteHeight(3))

Return
