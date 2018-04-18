extends Area2D
#Un objet invisible qui change la direction du monstre qui le touche

signal demitour

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Knight":
			emit_signal("demitour")
			$CollisionShape2D.disabled = true
			$Timer.start()

func _on_Timer_timeout():
	$CollisionShape2D.disabled = false

