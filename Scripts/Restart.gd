extends Button
#Pour relancer le niveau

export(String, FILE, "*.tscn") var restart

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass



func _on_Restart_pressed():
	get_tree().change_scene(restart)
	
