extends Button
#Pour retourner au menu principal

export(String, FILE, "*.tscn") var quit

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass




func _on_Quit_pressed():
	get_tree().change_scene(quit)
