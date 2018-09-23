EnemyMove:
enemyy = getspritey(3) + 2

if enemyDirection = 4 and enemyx > screenWidth - GetSpriteWidth(3)
	enemyDirection = -4
endif

if enemyDirection = -4 and enemyx < 0
	enemyDirection = 4
endif

enemyx = GetSpriteX(3) + enemyDirection

SetSpritePosition(3, enemyx, enemyy)

Return
