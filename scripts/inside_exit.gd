extends Area2D

var outside_scene := load("res://scenes/outside.tscn")

func _on_body_entered(_body: Node2D) -> void:
	get_tree().change_scene_to_packed(outside_scene)
