extends Button
#Le bouton pour charger le premier niveau

export(String, FILE, "*.tscn") var start

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Start_pressed():
	get_tree().change_scene(start)
