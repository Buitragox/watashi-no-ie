extends Area2D

var inside_scene := load("res://scenes/inside.tscn")

func _on_body_entered(_body: Node2D) -> void:
	get_tree().change_scene_to_packed(inside_scene)
