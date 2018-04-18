extends KinematicBody2D
#Les météorites tombent et quand elles touche un objet (le sol/le joueur), elle disparait

const GRAVITY = 20

var velocity = Vector2()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _physics_process(delta):
	velocity.y += GRAVITY * delta
	
	var collision_info = move_and_collide(velocity)
	
	if collision_info:
		$Crash.play()	#On joue un son quand elle s'écrase
		if collision_info.collider.has_method("hit"):
			collision_info.collider.hit()
		queue_free()