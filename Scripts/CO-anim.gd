extends KinematicBody2D
#Un ennemi animé qui se comporte comme le lama

const SPEED = 300
const GRAVITY = 400
var motion = Vector2()
var direction = 1

func _on_Demitour_demitour():
	if direction == 1:
#		$SpriteCO.flip_h = true
		direction = -1
	elif direction == -1:
#		$SpriteCO.flip_h = false
		direction = 1

func _process(delta):
	$AnimationPlayer.play()
	motion.y = GRAVITY
	motion.x = SPEED * direction
	
	move_and_slide(motion, Vector2(0, -1))
