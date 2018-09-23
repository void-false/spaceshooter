SetVirtualResolution(768, 1024)
SetSyncRate(30, 0)
SetWindowAllowResize(1)

playerx as float
playery as float
laserx as float = -100
lasery as float
laserFired as integer = 0
score = 0
enemyx as float
enemyy as float
enemyDirection = 4

#include "Loader.agc"
#include "PlayerMove.agc"
#include "PlayerShoots.agc"
#include "sounds.agc"
#include "EnemyMove.agc"
#include "Collision.agc"
#include "Text.agc"
#include "Stars.agc"

Gosub MakeStars
Gosub loader

//GoSub LoadSounds
//Gosub LoadMusic
Gosub MakeText

screenWidth = GetVirtualWidth()
screenHeight = GetVirtualHeight()
playerWidth = GetSpriteWidth(1)
playerHeight = GetSpriteHeight(1)

do
	Gosub PlayerMove
	Gosub PlayerShoots
	Gosub EnemyMove
	Gosub CheckCollision
	Gosub UpdateText
	Gosub MoveStars
	
	If GetRawKeyPressed(27) Then End
	Sync()
loop
