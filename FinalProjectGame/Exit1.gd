extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	# had help from another professor Francis
	var current_level = get_tree().current_scene.scene_file_path
	if body.name == "Player":
		if current_level == "res://game.tscn":
			get_tree().change_scene_to_file("res://Levels/level2.tscn")
		elif current_level == "res://Levels/level2.tscn":
			get_tree().change_scene_to_file("res://Levels/level_3.tscn")
		elif current_level == "res://Levels/level_3.tscn":
			get_tree().change_scene_to_file("res://Levels/fin.tscn")
		elif current_level == "res://Levels/fin.tscn":
			get_tree().change_scene_to_file("res://main menu/end.tscn")
