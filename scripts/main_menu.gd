extends Control

var first_scene := load("res://scenes/outside.tscn")


#func _init() -> void:
	#var screen_size := DisplayServer.screen_get_size()
	#DisplayServer.window_set_size(screen_size)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	

func _on_start_pressed() -> void:
	get_tree().change_scene_to_packed(first_scene)


func _on_quit_pressed() -> void:
	get_tree().quit()
