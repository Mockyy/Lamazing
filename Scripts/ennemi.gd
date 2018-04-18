extends KinematicBody2D
#Un lama ennemi qui se déplace en ligne droite

signal hit

const SPEED = 300
const GRAVITY = 400
var motion = Vector2()
var up = Vector2(0, -1)
var direction = 1


func _on_Area2D_demitour():
	if direction == 1:
		$Sprite.flip_h = true
		direction = -1
	elif direction == -1:
		$Sprite.flip_h = false
		direction = 1

func _process(delta):
	motion.y = GRAVITY
	motion.x = SPEED * direction
	
	
	motion = move_and_slide(motion, up)


