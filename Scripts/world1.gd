extends Node

export (PackedScene) var Mob

func _ready():
	randomize()

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


#On fait apparaitre des météorites toutes les secondes (grâce au timer) sur un point aléatoire du Path créé
func _on_MeteoriteTimer_timeout():
	$Path2D/PathFollow2D.set_offset(randi())
	var mob = Mob.instance()
	add_child(mob)
	mob.position = $Path2D/PathFollow2D.position
	

