extends Area2D

signal saut

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Ennemi":
			emit_signal("saut")