extends Button
#Un bouton qui fait apparaitre les controles

export(String, FILE, "*.tscn") var inputs

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Controles_pressed():
	get_tree().change_scene(inputs)
