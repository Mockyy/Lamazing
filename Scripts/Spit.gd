extends Area2D
#Sert à envoyer un projectile (inutilisé)

var speed = 750
var velocity = Vector2()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _physics_process(delta):
#	var collision = move_and_collide(velocity * delta)
#	if collision:
#		velocity = velocity.bounce(collision.normal)
#		if collision.collider.has_method("hit"):
#			collision.collider.hit()
	position.x += speed * delta


func _on_VisibilityNotifier2D_screen_exited():	#Quand il sort de l'écran, il disparait
	queue_free()
